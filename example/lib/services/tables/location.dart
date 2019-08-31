import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("TeslaLocation")
class TeslaLocations extends Table {
  static final tblFakePoints = "tesla_locations";
  static final dbId = "id";
  static final dbLat = "latitude";
  static final dbLong = "longitude";
  static final dbGeohash = "geohash";
  static final dbType = "type";
  static final dbOpen = "open_soon";

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();

  TextColumn get title => text().nullable()();

  TextColumn get type => text().nullable()();

  TextColumn get addressLine1 => text().nullable()();

  TextColumn get addressLine2 => text().nullable()();

  TextColumn get city => text().nullable()();

  TextColumn get country => text().nullable()();

  TextColumn get postalCode => text().nullable()();

  TextColumn get provinceState => text().nullable()();

  TextColumn get region => text().nullable()();

  TextColumn get subRegion => text().nullable()();

  TextColumn get addressNotes => text().nullable()();

  TextColumn get address => text().nullable()();

  TextColumn get amenities => text().nullable()();

  RealColumn get baiduLat => real().nullable()();

  RealColumn get baiduLng => real().nullable()();

  TextColumn get chargers => text().nullable()();

  TextColumn get destinationChargerLogo => text().nullable()();

  TextColumn get destinationWebsite => text().nullable()();

  TextColumn get directionsLink => text().nullable()();

  TextColumn get emails => text().nullable()();

  TextColumn get geocode => text().nullable()();

  TextColumn get hours => text().nullable()();

  BoolColumn get isGallery => boolean().nullable()();

  RealColumn get kioskPinX => real().nullable()();

  RealColumn get kioskPinY => real().nullable()();

  RealColumn get zoomKioskPinX => real().nullable()();

  RealColumn get zoomKioskPinY => real().nullable()();

  RealColumn get latitude => real().nullable()();

  RealColumn get longitude => real().nullable()();

  TextColumn get geohash => text().nullable()();

  RealColumn get nid => real().nullable()();

  RealColumn get openSoon => real().nullable()();

  TextColumn get path => text().nullable()();

  TextColumn get trtId => text().nullable()();

  BoolColumn get isSalesRepresentative => boolean().nullable()();

  DateTimeColumn get lastUpdated => dateTime().nullable()();
}
