import 'dart:convert';

import 'package:clustering_google_maps/clustering_google_maps.dart'
    show ClusteringHelper, AggregationSetup;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:moor_flutter/moor_flutter.dart';
import 'package:tesla/tesla.dart';

import 'services/database.dart';
import 'services/tables/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ClusteringHelper clusteringHelper;
  final CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(0.000000, 0.000000), zoom: 0.0);
  final db = DatabaseService();
  Set<Marker> markers = Set();

  void _onMapCreated(GoogleMapController mapController) async {
    print("onMapCreated");
    clusteringHelper.mapController = mapController;
    clusteringHelper.database = db;
    clusteringHelper.updateMap();
    final _chargers = await db.locationsDao.lastLocationsUpdate();
    if (_chargers == null && _chargers.isEmpty) {
      _refresh();
    }
  }

  Future _refresh() async {
    List<Supercharger> _chargers = [];
    final response = await http.get('https://www.tesla.com/all-locations');
    List<dynamic> _list = List.from(json.decode(response.body));
    for (var item in _list) {
      _chargers.add(Supercharger(null, json.decode(json.encode(item))));
    }
    await db.locationsDao.updateChargers(_chargers);
    clusteringHelper.updateMap();
  }

  updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  @override
  void initState() {
    _refresh();
    initDatabaseClustering();
    super.initState();
  }

  // For db solution
  initDatabaseClustering() {
    clusteringHelper = ClusteringHelper.forDB(
        dbGeohashColumn: TeslaLocations.dbGeohash,
        dbLatColumn: TeslaLocations.dbLat,
        dbLongColumn: TeslaLocations.dbLong,
        dbId: TeslaLocations.dbId,
        dbTable: TeslaLocations.tblFakePoints,
        updateMarkers: updateMarkers,
        aggregationSetup: AggregationSetup(),
        markerBuilder: (markerId, location, icon) async {
          final _location = await db.locationsDao.locationByID(markerId.value);
          if (_location != null && _location.isNotEmpty) {
            final _item = _location.first;
            return Marker(
              markerId: markerId,
              position: location,
              infoWindow: InfoWindow(
                title: "${_item.title}",
                snippet: '${_item.type}',
              ),
              onTap: () {
                print(_item.toJsonString());
              },
              icon: icon,
            );
          }
          return Marker(
            markerId: markerId,
            position: location,
            infoWindow: InfoWindow(
                title:
                    "${location.latitude.toStringAsFixed(2)},${location.longitude.toStringAsFixed(2)}"),
            icon: icon,
          );
        });
  }

  LocationType _type = LocationType.all;
  bool _open = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tesla Locations"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            child: DropdownButton(
              items: [
                for (var item in LocationType.values) ...[
                  DropdownMenuItem(
                    value: item,
                    child: Text(describeEnum(item)),
                  ),
                ],
              ],
              value: _type,
              onChanged: (val) {
                if (mounted) {
                  setState(() {
                    _type = val;
                  });
                }
                _search();
              },
            )
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        myLocationEnabled: true,
        onCameraMove: (pos) =>
            clusteringHelper.onCameraMove(pos, forceUpdate: false),
        onCameraIdle: clusteringHelper.onMapIdle,
      ),
    );
  }

  void _search() {
    switch (_type) {
      case LocationType.all:
        clusteringHelper.whereClause = '';
        break;
      case LocationType.superchargers:
        clusteringHelper.whereClause =
            "WHERE ${TeslaLocations.dbType} LIKE :id AND ${TeslaLocations.dbOpen} " +
                (_open ? '= 0' : '<> 0');
        clusteringHelper.variables = [Variable.withString('%supercharger%')];
        break;
      case LocationType.destination:
        clusteringHelper.whereClause =
            "WHERE ${TeslaLocations.dbType} LIKE :id AND ${TeslaLocations.dbOpen} " +
                (_open ? '= 0' : '<> 0');
        clusteringHelper.variables = [Variable.withString('%destination%')];
        break;
      default:
    }
    clusteringHelper.updateMap();
  }
}

enum LocationType { all, superchargers, destination }
