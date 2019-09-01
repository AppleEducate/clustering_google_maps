import 'dart:convert';

import 'package:clustering_google_maps/clustering_google_maps.dart'
    show ClusteringHelper, AggregationSetup;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:tesla/tesla.dart';

import 'services/database.dart';
import 'services/tables/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(0.000000, 0.000000), zoom: 0.0);
  final db = DatabaseService();
  Set<Marker> markers = Set();
  ClusteringHelper clusteringHelper;

  void _onMapCreated(GoogleMapController mapController) async {
    print("onMapCreated");
    clusteringHelper.mapController = mapController;
    clusteringHelper.database = db;
    clusteringHelper.updateMap();
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
      dbIdColumn: TeslaLocations.dbId,
      dbTable: TeslaLocations.tblFakePoints,
      dbTitleColumn: TeslaLocations.dbTitle,
      dbSnippetColumn: TeslaLocations.dbSnippet,
      updateMarkers: updateMarkers,
      aggregationSetup: AggregationSetup(),
      // onMarkerTap: (id) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tesla Locations"),
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
}
