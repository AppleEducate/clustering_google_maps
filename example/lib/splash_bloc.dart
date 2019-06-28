import 'dart:convert';
import 'dart:io';
import 'package:clustering_google_maps/clustering_google_maps.dart';
import 'package:example/app_db.dart';
import 'package:example/fake_point.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

class SplashBloc {
  Future<List<LatLngAndGeohash>> getListOfLatLngAndGeohash(
      BuildContext context) async {
    print("START GET FAKE DATA");
    try {
      final fakeList = await assetFromJson(context);
      List<LatLngAndGeohash> myPoints = List();
      for (int i = 0; i < fakeList.length; i++) {
        final fakePoint = fakeList[i];
        final p = LatLngAndGeohash(
          LatLng(fakePoint["LATITUDE"], fakePoint["LONGITUDE"]),
        );
        myPoints.add(p);
      }
      print("EXTRACT COMPLETE");
      return myPoints;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> addFakePointsToDB(String url) async {
    print("START GET FAKE DATA");
    try {
      final fakeList = await networkFromJson(url);
      for (int i = 0; i < fakeList.length; i++) {
        final point = fakeList[i];
        final _lat = double.tryParse(point["latitude"].toString());
        final _lon = double.tryParse(point["longitude"].toString());
        final f = FakePoint(
          location: LatLng(_lat, _lon),
          id: i,
        );
        await saveFakePointToDB(f);
      }
      print("EXTRACT COMPLETE");
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<dynamic>> assetFromJson(BuildContext context) async {
    final fakeData = await DefaultAssetBundle.of(context)
        .loadString('assets/map_point.json');
    return json.decode(fakeData.toString());
  }

  Future<List<dynamic>> networkFromJson(String url) async {
    final _data = await http.get(url);
    return json.decode(_data.body);
  }

  Future<void> saveFakePointToDB(FakePoint fakePoint) async {
    var db = await AppDatabase.get().getDb();
    try {
      await db.transaction((Transaction txn) async {
        await txn.rawInsert('INSERT INTO '
            '${FakePoint.tblFakePoints}(${FakePoint.dbGeohash},${FakePoint.dbLat},${FakePoint.dbLong})'
            ' VALUES("${fakePoint.geohash}",${fakePoint.location.latitude},${fakePoint.location.longitude})');
      });
    } catch (e) {
      print("erorr = " + e.toString());
      throw Exception(e);
    }
  }
}
