// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$LocationsDaoMixin on DatabaseAccessor<DatabaseService> {
  $TeslaLocationsTable get teslaLocations => db.teslaLocations;
  LastLocationsUpdateResult _rowToLastLocationsUpdateResult(QueryRow row) {
    return LastLocationsUpdateResult(
      lastUpdated: row.readDateTime('last_updated'),
    );
  }

  Future<List<LastLocationsUpdateResult>> lastLocationsUpdate(
      {@Deprecated('No longer needed with Moor 1.6 - see the changelog for details')
          QueryEngine operateOn}) {
    return (operateOn ?? this).customSelect(
        'SELECT last_updated FROM tesla_locations ORDER BY last_updated DESC LIMIT 1',
        variables: []).then((rows) => rows.map(_rowToLastLocationsUpdateResult).toList());
  }

  Stream<List<LastLocationsUpdateResult>> watchLastLocationsUpdate() {
    return customSelectStream(
        'SELECT last_updated FROM tesla_locations ORDER BY last_updated DESC LIMIT 1',
        variables: [],
        readsFrom: {
          teslaLocations
        }).map((rows) => rows.map(_rowToLastLocationsUpdateResult).toList());
  }

  TeslaLocation _rowToTeslaLocation(QueryRow row) {
    return TeslaLocation(
      id: row.readString('id'),
      title: row.readString('title'),
      type: row.readString('type'),
      addressLine1: row.readString('address_line1'),
      addressLine2: row.readString('address_line2'),
      city: row.readString('city'),
      country: row.readString('country'),
      postalCode: row.readString('postal_code'),
      provinceState: row.readString('province_state'),
      region: row.readString('region'),
      subRegion: row.readString('sub_region'),
      addressNotes: row.readString('address_notes'),
      address: row.readString('address'),
      amenities: row.readString('amenities'),
      baiduLat: row.readDouble('baidu_lat'),
      baiduLng: row.readDouble('baidu_lng'),
      chargers: row.readString('chargers'),
      destinationChargerLogo: row.readString('destination_charger_logo'),
      destinationWebsite: row.readString('destination_website'),
      directionsLink: row.readString('directions_link'),
      emails: row.readString('emails'),
      geocode: row.readString('geocode'),
      hours: row.readString('hours'),
      isGallery: row.readBool('is_gallery'),
      kioskPinX: row.readDouble('kiosk_pin_x'),
      kioskPinY: row.readDouble('kiosk_pin_y'),
      zoomKioskPinX: row.readDouble('zoom_kiosk_pin_x'),
      zoomKioskPinY: row.readDouble('zoom_kiosk_pin_y'),
      latitude: row.readDouble('latitude'),
      longitude: row.readDouble('longitude'),
      geohash: row.readString('geohash'),
      nid: row.readDouble('nid'),
      openSoon: row.readDouble('open_soon'),
      path: row.readString('path'),
      trtId: row.readString('trt_id'),
      isSalesRepresentative: row.readBool('is_sales_representative'),
      lastUpdated: row.readDateTime('last_updated'),
    );
  }

  Future<List<TeslaLocation>> locationByID(
      String id,
      {@Deprecated('No longer needed with Moor 1.6 - see the changelog for details')
          QueryEngine operateOn}) {
    return (operateOn ?? this).customSelect(
        'SELECT * FROM tesla_locations WHERE id = :id ORDER BY last_updated DESC LIMIT 1',
        variables: [
          Variable.withString(id),
        ]).then((rows) => rows.map(_rowToTeslaLocation).toList());
  }

  Stream<List<TeslaLocation>> watchLocationByID(String id) {
    return customSelectStream(
        'SELECT * FROM tesla_locations WHERE id = :id ORDER BY last_updated DESC LIMIT 1',
        variables: [
          Variable.withString(id),
        ],
        readsFrom: {
          teslaLocations
        }).map((rows) => rows.map(_rowToTeslaLocation).toList());
  }
}

class LastLocationsUpdateResult {
  final DateTime lastUpdated;
  LastLocationsUpdateResult({
    this.lastUpdated,
  });
}
