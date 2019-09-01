import 'package:geohash/geohash.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class LatLngAndGeohash {
  final LatLng location;
  final String id;
  final String title;
  final String snippet;
  String geohash;

  LatLngAndGeohash(this.id, this.location, this.title, this.snippet) {
    geohash = Geohash.encode(location.latitude, location.longitude);
  }

  LatLngAndGeohash.fromMap(Map<String, dynamic> map)
      : location = LatLng(map['lat'], map['long']),
        title = map['title'],
        snippet = map['snippet'],
        id = map['id'] {
    this.geohash =
        Geohash.encode(this.location.latitude, this.location.longitude);
  }
}
