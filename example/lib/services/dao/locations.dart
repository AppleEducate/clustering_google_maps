import 'package:example/services/tables/location.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:tesla/tesla.dart';
import 'package:geohash/geohash.dart';

import '../database.dart';

part 'locations.g.dart';

@UseDao(
  tables: [
    TeslaLocations,
  ],
  queries: {
    'lastLocationsUpdate':
        'SELECT last_updated FROM tesla_locations ORDER BY last_updated DESC LIMIT 1',
    'locationByID':
        'SELECT * FROM tesla_locations WHERE id = :id ORDER BY last_updated DESC LIMIT 1',
  },
)
class LocationsDao extends DatabaseAccessor<DatabaseService>
    with _$LocationsDaoMixin {
  LocationsDao(DatabaseService db) : super(db);

  Future cleanChargers(DateTime lastUpdated) async {
    return await transaction((_) async {
      return (delete(teslaLocations)
            ..where((l) => l.lastUpdated.isBiggerThanValue(lastUpdated)))
          .go();
    });
  }

  Future updateChargers(List<Supercharger> chargers) async {
    final _updated = DateTime.now();
    List<TeslaLocationsCompanion> _items = [];
    for (var item in chargers) {
      // print('Item: ${item.productID}');
      if (item?.id != null) {
        final _item = TeslaLocationsCompanion(
          id: addField(item.id),
          title: addField(item?.title),
          type: addField(item?.type?.join(',')),
          addressLine1: addField(item?.addressLine1),
          addressLine2: addField(item?.addressLine2),
          city: addField(item?.city),
          country: addField(item?.country),
          postalCode: addField(item?.postalCode),
          provinceState: addField(item?.provinceState),
          region: addField(item?.region),
          subRegion: addField(item?.subRegion),
          addressNotes: addField(item?.addressNotes),
          address: addField(item?.address),
          amenities: addField(item?.amenities),
          baiduLat: addField(item?.baiduLat),
          baiduLng: addField(item?.baiduLng),
          chargers: addField(item?.chargers?.toString()),
          destinationChargerLogo: addField(item?.destinationChargerLogo),
          destinationWebsite: addField(item?.destinationWebsite),
          directionsLink: addField(item?.directionsLink),
          // emails: addField(item?.emails?.toString()),
          geocode: addField(item?.geocode),
          hours: addField(item?.hours),
          isGallery: addField(item?.isGallery, fallback: false),
          kioskPinX: addField(item?.kioskPinX?.toDouble()),
          kioskPinY: addField(item?.kioskPinY?.toDouble()),
          zoomKioskPinX: addField(item?.zoomKioskPinX?.toDouble()),
          zoomKioskPinY: addField(item?.zoomKioskPinY?.toDouble()),
          latitude: addField(item?.latitude?.toDouble()),
          longitude: addField(item?.longitude?.toDouble()),
          geohash: addField(
              Geohash.encode(item?.latitude, item?.longitude)?.toString()),
          nid: addField(item?.nid?.toDouble()),
          openSoon: addField(item?.openSoon?.toDouble(), fallback: 0.0),
          path: addField(item?.path),
          trtId: addField(item?.trtId),
          isSalesRepresentative:
              addField(item?.isSalesRepresentative, fallback: false),
          lastUpdated: addField(_updated),
        );
        _items.add(_item);
      }
    }
    return await transaction((_) async {
      await into(teslaLocations).insertAll(_items, orReplace: true);
      await cleanChargers(_updated);
    });
  }
}

Value<T> addField<T>(T val, {T fallback}) {
  Value<T> _fallback;
  if (fallback != null) {
    _fallback = Value<T>(fallback);
  }
  if (val == null) {
    return _fallback ?? const Value.absent();
  }
  if (val is String && (val == 'null' || val == 'Null')) {
    return _fallback ?? const Value.absent();
  }
  return Value(val);
}
