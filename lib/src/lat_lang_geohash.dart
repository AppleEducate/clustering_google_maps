import 'package:geohash/geohash.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class LatLngAndGeohash {
  final LatLng location;
  final String id;
  String geohash;

  LatLngAndGeohash(this.id, this.location) {
    geohash = Geohash.encode(location.latitude, location.longitude);
  }

  LatLngAndGeohash.fromMap(Map<String, dynamic> map)
      : location = LatLng(map['lat'], map['long']),
        id = map['id'] {
    this.geohash =
        Geohash.encode(this.location.latitude, this.location.longitude);
  }
}
