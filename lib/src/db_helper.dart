import 'package:clustering_google_maps/src/aggregated_points.dart';
import 'package:clustering_google_maps/src/lat_lang_geohash.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show LatLng, LatLngBounds;
import 'package:meta/meta.dart';
import 'package:moor/moor.dart';

class DBHelper {
  static Future<List<AggregatedPoints>> getAggregatedPoints({
    @required GeneratedDatabase database,
    @required String dbTable,
    @required String dbLatColumn,
    @required String dbLongColumn,
    @required String dbGeohashColumn,
    @required int level,
    LatLngBounds latLngBounds,
    String whereClause = "",
    List<Variable> variables = const [],
  }) async {
    print("--------- START QUERY AGGREGATION");
    try {
      if (database == null) {
        throw Exception("Database must not be null");
      }

      final String boundingBoxClause = buildBoundingBoxClause(
        latLngBounds,
        dbTable,
        dbLatColumn,
        dbLongColumn,
      );

      whereClause = whereClause.isEmpty
          ? "WHERE $boundingBoxClause"
          : "$whereClause AND $boundingBoxClause";

      final query =
          'SELECT COUNT(*) as n_marker, AVG($dbLatColumn) as lat, AVG($dbLongColumn) as long '
          'FROM $dbTable $whereClause GROUP BY substr($dbGeohashColumn,1,$level);';
      print(query);
      var result = await database.customSelect(query, variables: variables);

      List<AggregatedPoints> aggregatedPoints = new List();

      for (var item in result) {
        print(item);
        var p = new AggregatedPoints.fromMap(item.data);
        aggregatedPoints.add(p);
      }
      print("--------- COMPLETE QUERY AGGREGATION");
      return aggregatedPoints;
    } catch (e) {
      print(e.toString());
      print("--------- COMPLETE QUERY AGGREGATION WITH ERROR");
      return List<AggregatedPoints>();
    }
  }

  static Future<List<LatLngAndGeohash>> getPoints({
    @required GeneratedDatabase database,
    @required String dbTable,
    @required String dbId,
    @required String dbTitleColumn,
    @required String dbSnippetColumn,
    @required String dbLatColumn,
    @required String dbLongColumn,
    String whereClause = "",
    List<Variable> variables = const [],
  }) async {
    try {
      var result = await database.customSelect(
        'SELECT $dbLatColumn as lat, $dbLongColumn as long, $dbId, $dbTitleColumn as title, $dbSnippetColumn as snippet '
        'FROM $dbTable $whereClause;',
        variables: variables,
      );
      List<LatLngAndGeohash> points = new List();
      for (var item in result) {
        var p = new LatLngAndGeohash.fromMap(item.data);
        points.add(p);
      }
      print("--------- COMPLETE QUERY");
      return points;
    } catch (e) {
      print(e.toString());
      return List<LatLngAndGeohash>();
    }
  }

  static Future<LatLngAndGeohash> getPoint({
    @required GeneratedDatabase database,
    @required LatLng location,
    @required String dbTable,
    @required String dbId,
    @required String dbTitleColumn,
    @required String dbSnippetColumn,
    @required String dbLatColumn,
    @required String dbLongColumn,
  }) async {
    try {
      var result = await database.customSelect(
        'SELECT $dbLatColumn as lat, $dbLongColumn as long, $dbId, $dbTitleColumn as title, $dbSnippetColumn as snippet '
        'FROM $dbTable WHERE lat = :lat AND long = :long;',
        variables: [
          Variable.withReal(location.latitude),
          Variable.withReal(location.longitude),
        ],
      );
      List<LatLngAndGeohash> points = new List();
      for (var item in result) {
        var p = new LatLngAndGeohash.fromMap(item.data);
        points.add(p);
      }
      print("--------- COMPLETE QUERY");
      return points?.first;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static String buildBoundingBoxClause(
      LatLngBounds latLngBounds, String dbTable, String dbLat, String dbLong) {
    print(latLngBounds.toString());
    final double leftTopLatitude = latLngBounds.northeast.latitude;
    final double leftTopLongitude = latLngBounds.southwest.longitude;
    final double rightBottomLatitude = latLngBounds.southwest.latitude;
    final double rightBottomLongitude = latLngBounds.northeast.longitude;

    final latQuery = (leftTopLatitude > rightBottomLatitude)
        ? "($dbLat <= $leftTopLatitude AND $dbLat >= $rightBottomLatitude)"
        : "($dbLat <= $leftTopLatitude OR $dbLat >= $rightBottomLatitude)";

    final longQuery = (leftTopLongitude < rightBottomLongitude)
        ? "($dbLong >= $leftTopLongitude AND $dbLong <= $rightBottomLongitude)"
        : "($dbLong >= $leftTopLongitude OR $dbLong <= $rightBottomLongitude)";

    return "$latQuery AND $longQuery";
  }
}
