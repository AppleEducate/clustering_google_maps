// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class TeslaLocation extends DataClass implements Insertable<TeslaLocation> {
  final String id;
  final String title;
  final String type;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String country;
  final String postalCode;
  final String provinceState;
  final String region;
  final String subRegion;
  final String addressNotes;
  final String address;
  final String amenities;
  final double baiduLat;
  final double baiduLng;
  final String chargers;
  final String destinationChargerLogo;
  final String destinationWebsite;
  final String directionsLink;
  final String emails;
  final String geocode;
  final String hours;
  final bool isGallery;
  final double kioskPinX;
  final double kioskPinY;
  final double zoomKioskPinX;
  final double zoomKioskPinY;
  final double latitude;
  final double longitude;
  final String geohash;
  final double nid;
  final double openSoon;
  final String path;
  final String trtId;
  final bool isSalesRepresentative;
  final DateTime lastUpdated;
  TeslaLocation(
      {@required this.id,
      this.title,
      this.type,
      this.addressLine1,
      this.addressLine2,
      this.city,
      this.country,
      this.postalCode,
      this.provinceState,
      this.region,
      this.subRegion,
      this.addressNotes,
      this.address,
      this.amenities,
      this.baiduLat,
      this.baiduLng,
      this.chargers,
      this.destinationChargerLogo,
      this.destinationWebsite,
      this.directionsLink,
      this.emails,
      this.geocode,
      this.hours,
      this.isGallery,
      this.kioskPinX,
      this.kioskPinY,
      this.zoomKioskPinX,
      this.zoomKioskPinY,
      this.latitude,
      this.longitude,
      this.geohash,
      this.nid,
      this.openSoon,
      this.path,
      this.trtId,
      this.isSalesRepresentative,
      this.lastUpdated});
  factory TeslaLocation.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return TeslaLocation(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      addressLine1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}address_line1']),
      addressLine2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}address_line2']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      country:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}country']),
      postalCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}postal_code']),
      provinceState: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}province_state']),
      region:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}region']),
      subRegion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_region']),
      addressNotes: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}address_notes']),
      address:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}address']),
      amenities: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}amenities']),
      baiduLat: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}baidu_lat']),
      baiduLng: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}baidu_lng']),
      chargers: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}chargers']),
      destinationChargerLogo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}destination_charger_logo']),
      destinationWebsite: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}destination_website']),
      directionsLink: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}directions_link']),
      emails:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}emails']),
      geocode:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}geocode']),
      hours:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}hours']),
      isGallery: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_gallery']),
      kioskPinX: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}kiosk_pin_x']),
      kioskPinY: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}kiosk_pin_y']),
      zoomKioskPinX: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}zoom_kiosk_pin_x']),
      zoomKioskPinY: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}zoom_kiosk_pin_y']),
      latitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      geohash:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}geohash']),
      nid: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}nid']),
      openSoon: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}open_soon']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
      trtId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}trt_id']),
      isSalesRepresentative: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}is_sales_representative']),
      lastUpdated: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
    );
  }
  factory TeslaLocation.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return TeslaLocation(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      type: serializer.fromJson<String>(json['type']),
      addressLine1: serializer.fromJson<String>(json['addressLine1']),
      addressLine2: serializer.fromJson<String>(json['addressLine2']),
      city: serializer.fromJson<String>(json['city']),
      country: serializer.fromJson<String>(json['country']),
      postalCode: serializer.fromJson<String>(json['postalCode']),
      provinceState: serializer.fromJson<String>(json['provinceState']),
      region: serializer.fromJson<String>(json['region']),
      subRegion: serializer.fromJson<String>(json['subRegion']),
      addressNotes: serializer.fromJson<String>(json['addressNotes']),
      address: serializer.fromJson<String>(json['address']),
      amenities: serializer.fromJson<String>(json['amenities']),
      baiduLat: serializer.fromJson<double>(json['baiduLat']),
      baiduLng: serializer.fromJson<double>(json['baiduLng']),
      chargers: serializer.fromJson<String>(json['chargers']),
      destinationChargerLogo:
          serializer.fromJson<String>(json['destinationChargerLogo']),
      destinationWebsite:
          serializer.fromJson<String>(json['destinationWebsite']),
      directionsLink: serializer.fromJson<String>(json['directionsLink']),
      emails: serializer.fromJson<String>(json['emails']),
      geocode: serializer.fromJson<String>(json['geocode']),
      hours: serializer.fromJson<String>(json['hours']),
      isGallery: serializer.fromJson<bool>(json['isGallery']),
      kioskPinX: serializer.fromJson<double>(json['kioskPinX']),
      kioskPinY: serializer.fromJson<double>(json['kioskPinY']),
      zoomKioskPinX: serializer.fromJson<double>(json['zoomKioskPinX']),
      zoomKioskPinY: serializer.fromJson<double>(json['zoomKioskPinY']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      geohash: serializer.fromJson<String>(json['geohash']),
      nid: serializer.fromJson<double>(json['nid']),
      openSoon: serializer.fromJson<double>(json['openSoon']),
      path: serializer.fromJson<String>(json['path']),
      trtId: serializer.fromJson<String>(json['trtId']),
      isSalesRepresentative:
          serializer.fromJson<bool>(json['isSalesRepresentative']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'type': serializer.toJson<String>(type),
      'addressLine1': serializer.toJson<String>(addressLine1),
      'addressLine2': serializer.toJson<String>(addressLine2),
      'city': serializer.toJson<String>(city),
      'country': serializer.toJson<String>(country),
      'postalCode': serializer.toJson<String>(postalCode),
      'provinceState': serializer.toJson<String>(provinceState),
      'region': serializer.toJson<String>(region),
      'subRegion': serializer.toJson<String>(subRegion),
      'addressNotes': serializer.toJson<String>(addressNotes),
      'address': serializer.toJson<String>(address),
      'amenities': serializer.toJson<String>(amenities),
      'baiduLat': serializer.toJson<double>(baiduLat),
      'baiduLng': serializer.toJson<double>(baiduLng),
      'chargers': serializer.toJson<String>(chargers),
      'destinationChargerLogo':
          serializer.toJson<String>(destinationChargerLogo),
      'destinationWebsite': serializer.toJson<String>(destinationWebsite),
      'directionsLink': serializer.toJson<String>(directionsLink),
      'emails': serializer.toJson<String>(emails),
      'geocode': serializer.toJson<String>(geocode),
      'hours': serializer.toJson<String>(hours),
      'isGallery': serializer.toJson<bool>(isGallery),
      'kioskPinX': serializer.toJson<double>(kioskPinX),
      'kioskPinY': serializer.toJson<double>(kioskPinY),
      'zoomKioskPinX': serializer.toJson<double>(zoomKioskPinX),
      'zoomKioskPinY': serializer.toJson<double>(zoomKioskPinY),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'geohash': serializer.toJson<String>(geohash),
      'nid': serializer.toJson<double>(nid),
      'openSoon': serializer.toJson<double>(openSoon),
      'path': serializer.toJson<String>(path),
      'trtId': serializer.toJson<String>(trtId),
      'isSalesRepresentative': serializer.toJson<bool>(isSalesRepresentative),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TeslaLocation>>(
      bool nullToAbsent) {
    return TeslaLocationsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      addressLine1: addressLine1 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine1),
      addressLine2: addressLine2 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine2),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      postalCode: postalCode == null && nullToAbsent
          ? const Value.absent()
          : Value(postalCode),
      provinceState: provinceState == null && nullToAbsent
          ? const Value.absent()
          : Value(provinceState),
      region:
          region == null && nullToAbsent ? const Value.absent() : Value(region),
      subRegion: subRegion == null && nullToAbsent
          ? const Value.absent()
          : Value(subRegion),
      addressNotes: addressNotes == null && nullToAbsent
          ? const Value.absent()
          : Value(addressNotes),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      amenities: amenities == null && nullToAbsent
          ? const Value.absent()
          : Value(amenities),
      baiduLat: baiduLat == null && nullToAbsent
          ? const Value.absent()
          : Value(baiduLat),
      baiduLng: baiduLng == null && nullToAbsent
          ? const Value.absent()
          : Value(baiduLng),
      chargers: chargers == null && nullToAbsent
          ? const Value.absent()
          : Value(chargers),
      destinationChargerLogo: destinationChargerLogo == null && nullToAbsent
          ? const Value.absent()
          : Value(destinationChargerLogo),
      destinationWebsite: destinationWebsite == null && nullToAbsent
          ? const Value.absent()
          : Value(destinationWebsite),
      directionsLink: directionsLink == null && nullToAbsent
          ? const Value.absent()
          : Value(directionsLink),
      emails:
          emails == null && nullToAbsent ? const Value.absent() : Value(emails),
      geocode: geocode == null && nullToAbsent
          ? const Value.absent()
          : Value(geocode),
      hours:
          hours == null && nullToAbsent ? const Value.absent() : Value(hours),
      isGallery: isGallery == null && nullToAbsent
          ? const Value.absent()
          : Value(isGallery),
      kioskPinX: kioskPinX == null && nullToAbsent
          ? const Value.absent()
          : Value(kioskPinX),
      kioskPinY: kioskPinY == null && nullToAbsent
          ? const Value.absent()
          : Value(kioskPinY),
      zoomKioskPinX: zoomKioskPinX == null && nullToAbsent
          ? const Value.absent()
          : Value(zoomKioskPinX),
      zoomKioskPinY: zoomKioskPinY == null && nullToAbsent
          ? const Value.absent()
          : Value(zoomKioskPinY),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      geohash: geohash == null && nullToAbsent
          ? const Value.absent()
          : Value(geohash),
      nid: nid == null && nullToAbsent ? const Value.absent() : Value(nid),
      openSoon: openSoon == null && nullToAbsent
          ? const Value.absent()
          : Value(openSoon),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      trtId:
          trtId == null && nullToAbsent ? const Value.absent() : Value(trtId),
      isSalesRepresentative: isSalesRepresentative == null && nullToAbsent
          ? const Value.absent()
          : Value(isSalesRepresentative),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
    ) as T;
  }

  TeslaLocation copyWith(
          {String id,
          String title,
          String type,
          String addressLine1,
          String addressLine2,
          String city,
          String country,
          String postalCode,
          String provinceState,
          String region,
          String subRegion,
          String addressNotes,
          String address,
          String amenities,
          double baiduLat,
          double baiduLng,
          String chargers,
          String destinationChargerLogo,
          String destinationWebsite,
          String directionsLink,
          String emails,
          String geocode,
          String hours,
          bool isGallery,
          double kioskPinX,
          double kioskPinY,
          double zoomKioskPinX,
          double zoomKioskPinY,
          double latitude,
          double longitude,
          String geohash,
          double nid,
          double openSoon,
          String path,
          String trtId,
          bool isSalesRepresentative,
          DateTime lastUpdated}) =>
      TeslaLocation(
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        city: city ?? this.city,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode,
        provinceState: provinceState ?? this.provinceState,
        region: region ?? this.region,
        subRegion: subRegion ?? this.subRegion,
        addressNotes: addressNotes ?? this.addressNotes,
        address: address ?? this.address,
        amenities: amenities ?? this.amenities,
        baiduLat: baiduLat ?? this.baiduLat,
        baiduLng: baiduLng ?? this.baiduLng,
        chargers: chargers ?? this.chargers,
        destinationChargerLogo:
            destinationChargerLogo ?? this.destinationChargerLogo,
        destinationWebsite: destinationWebsite ?? this.destinationWebsite,
        directionsLink: directionsLink ?? this.directionsLink,
        emails: emails ?? this.emails,
        geocode: geocode ?? this.geocode,
        hours: hours ?? this.hours,
        isGallery: isGallery ?? this.isGallery,
        kioskPinX: kioskPinX ?? this.kioskPinX,
        kioskPinY: kioskPinY ?? this.kioskPinY,
        zoomKioskPinX: zoomKioskPinX ?? this.zoomKioskPinX,
        zoomKioskPinY: zoomKioskPinY ?? this.zoomKioskPinY,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        geohash: geohash ?? this.geohash,
        nid: nid ?? this.nid,
        openSoon: openSoon ?? this.openSoon,
        path: path ?? this.path,
        trtId: trtId ?? this.trtId,
        isSalesRepresentative:
            isSalesRepresentative ?? this.isSalesRepresentative,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  @override
  String toString() {
    return (StringBuffer('TeslaLocation(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('type: $type, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('postalCode: $postalCode, ')
          ..write('provinceState: $provinceState, ')
          ..write('region: $region, ')
          ..write('subRegion: $subRegion, ')
          ..write('addressNotes: $addressNotes, ')
          ..write('address: $address, ')
          ..write('amenities: $amenities, ')
          ..write('baiduLat: $baiduLat, ')
          ..write('baiduLng: $baiduLng, ')
          ..write('chargers: $chargers, ')
          ..write('destinationChargerLogo: $destinationChargerLogo, ')
          ..write('destinationWebsite: $destinationWebsite, ')
          ..write('directionsLink: $directionsLink, ')
          ..write('emails: $emails, ')
          ..write('geocode: $geocode, ')
          ..write('hours: $hours, ')
          ..write('isGallery: $isGallery, ')
          ..write('kioskPinX: $kioskPinX, ')
          ..write('kioskPinY: $kioskPinY, ')
          ..write('zoomKioskPinX: $zoomKioskPinX, ')
          ..write('zoomKioskPinY: $zoomKioskPinY, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('geohash: $geohash, ')
          ..write('nid: $nid, ')
          ..write('openSoon: $openSoon, ')
          ..write('path: $path, ')
          ..write('trtId: $trtId, ')
          ..write('isSalesRepresentative: $isSalesRepresentative, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              type.hashCode,
              $mrjc(
                  addressLine1.hashCode,
                  $mrjc(
                      addressLine2.hashCode,
                      $mrjc(
                          city.hashCode,
                          $mrjc(
                              country.hashCode,
                              $mrjc(
                                  postalCode.hashCode,
                                  $mrjc(
                                      provinceState.hashCode,
                                      $mrjc(
                                          region.hashCode,
                                          $mrjc(
                                              subRegion.hashCode,
                                              $mrjc(
                                                  addressNotes.hashCode,
                                                  $mrjc(
                                                      address.hashCode,
                                                      $mrjc(
                                                          amenities.hashCode,
                                                          $mrjc(
                                                              baiduLat.hashCode,
                                                              $mrjc(
                                                                  baiduLng
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      chargers
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          destinationChargerLogo
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              destinationWebsite.hashCode,
                                                                              $mrjc(directionsLink.hashCode, $mrjc(emails.hashCode, $mrjc(geocode.hashCode, $mrjc(hours.hashCode, $mrjc(isGallery.hashCode, $mrjc(kioskPinX.hashCode, $mrjc(kioskPinY.hashCode, $mrjc(zoomKioskPinX.hashCode, $mrjc(zoomKioskPinY.hashCode, $mrjc(latitude.hashCode, $mrjc(longitude.hashCode, $mrjc(geohash.hashCode, $mrjc(nid.hashCode, $mrjc(openSoon.hashCode, $mrjc(path.hashCode, $mrjc(trtId.hashCode, $mrjc(isSalesRepresentative.hashCode, lastUpdated.hashCode)))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TeslaLocation &&
          other.id == id &&
          other.title == title &&
          other.type == type &&
          other.addressLine1 == addressLine1 &&
          other.addressLine2 == addressLine2 &&
          other.city == city &&
          other.country == country &&
          other.postalCode == postalCode &&
          other.provinceState == provinceState &&
          other.region == region &&
          other.subRegion == subRegion &&
          other.addressNotes == addressNotes &&
          other.address == address &&
          other.amenities == amenities &&
          other.baiduLat == baiduLat &&
          other.baiduLng == baiduLng &&
          other.chargers == chargers &&
          other.destinationChargerLogo == destinationChargerLogo &&
          other.destinationWebsite == destinationWebsite &&
          other.directionsLink == directionsLink &&
          other.emails == emails &&
          other.geocode == geocode &&
          other.hours == hours &&
          other.isGallery == isGallery &&
          other.kioskPinX == kioskPinX &&
          other.kioskPinY == kioskPinY &&
          other.zoomKioskPinX == zoomKioskPinX &&
          other.zoomKioskPinY == zoomKioskPinY &&
          other.latitude == latitude &&
          other.longitude == longitude &&
          other.geohash == geohash &&
          other.nid == nid &&
          other.openSoon == openSoon &&
          other.path == path &&
          other.trtId == trtId &&
          other.isSalesRepresentative == isSalesRepresentative &&
          other.lastUpdated == lastUpdated);
}

class TeslaLocationsCompanion extends UpdateCompanion<TeslaLocation> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> type;
  final Value<String> addressLine1;
  final Value<String> addressLine2;
  final Value<String> city;
  final Value<String> country;
  final Value<String> postalCode;
  final Value<String> provinceState;
  final Value<String> region;
  final Value<String> subRegion;
  final Value<String> addressNotes;
  final Value<String> address;
  final Value<String> amenities;
  final Value<double> baiduLat;
  final Value<double> baiduLng;
  final Value<String> chargers;
  final Value<String> destinationChargerLogo;
  final Value<String> destinationWebsite;
  final Value<String> directionsLink;
  final Value<String> emails;
  final Value<String> geocode;
  final Value<String> hours;
  final Value<bool> isGallery;
  final Value<double> kioskPinX;
  final Value<double> kioskPinY;
  final Value<double> zoomKioskPinX;
  final Value<double> zoomKioskPinY;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<String> geohash;
  final Value<double> nid;
  final Value<double> openSoon;
  final Value<String> path;
  final Value<String> trtId;
  final Value<bool> isSalesRepresentative;
  final Value<DateTime> lastUpdated;
  const TeslaLocationsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.type = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.postalCode = const Value.absent(),
    this.provinceState = const Value.absent(),
    this.region = const Value.absent(),
    this.subRegion = const Value.absent(),
    this.addressNotes = const Value.absent(),
    this.address = const Value.absent(),
    this.amenities = const Value.absent(),
    this.baiduLat = const Value.absent(),
    this.baiduLng = const Value.absent(),
    this.chargers = const Value.absent(),
    this.destinationChargerLogo = const Value.absent(),
    this.destinationWebsite = const Value.absent(),
    this.directionsLink = const Value.absent(),
    this.emails = const Value.absent(),
    this.geocode = const Value.absent(),
    this.hours = const Value.absent(),
    this.isGallery = const Value.absent(),
    this.kioskPinX = const Value.absent(),
    this.kioskPinY = const Value.absent(),
    this.zoomKioskPinX = const Value.absent(),
    this.zoomKioskPinY = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.geohash = const Value.absent(),
    this.nid = const Value.absent(),
    this.openSoon = const Value.absent(),
    this.path = const Value.absent(),
    this.trtId = const Value.absent(),
    this.isSalesRepresentative = const Value.absent(),
    this.lastUpdated = const Value.absent(),
  });
  TeslaLocationsCompanion copyWith(
      {Value<String> id,
      Value<String> title,
      Value<String> type,
      Value<String> addressLine1,
      Value<String> addressLine2,
      Value<String> city,
      Value<String> country,
      Value<String> postalCode,
      Value<String> provinceState,
      Value<String> region,
      Value<String> subRegion,
      Value<String> addressNotes,
      Value<String> address,
      Value<String> amenities,
      Value<double> baiduLat,
      Value<double> baiduLng,
      Value<String> chargers,
      Value<String> destinationChargerLogo,
      Value<String> destinationWebsite,
      Value<String> directionsLink,
      Value<String> emails,
      Value<String> geocode,
      Value<String> hours,
      Value<bool> isGallery,
      Value<double> kioskPinX,
      Value<double> kioskPinY,
      Value<double> zoomKioskPinX,
      Value<double> zoomKioskPinY,
      Value<double> latitude,
      Value<double> longitude,
      Value<String> geohash,
      Value<double> nid,
      Value<double> openSoon,
      Value<String> path,
      Value<String> trtId,
      Value<bool> isSalesRepresentative,
      Value<DateTime> lastUpdated}) {
    return TeslaLocationsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      city: city ?? this.city,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
      provinceState: provinceState ?? this.provinceState,
      region: region ?? this.region,
      subRegion: subRegion ?? this.subRegion,
      addressNotes: addressNotes ?? this.addressNotes,
      address: address ?? this.address,
      amenities: amenities ?? this.amenities,
      baiduLat: baiduLat ?? this.baiduLat,
      baiduLng: baiduLng ?? this.baiduLng,
      chargers: chargers ?? this.chargers,
      destinationChargerLogo:
          destinationChargerLogo ?? this.destinationChargerLogo,
      destinationWebsite: destinationWebsite ?? this.destinationWebsite,
      directionsLink: directionsLink ?? this.directionsLink,
      emails: emails ?? this.emails,
      geocode: geocode ?? this.geocode,
      hours: hours ?? this.hours,
      isGallery: isGallery ?? this.isGallery,
      kioskPinX: kioskPinX ?? this.kioskPinX,
      kioskPinY: kioskPinY ?? this.kioskPinY,
      zoomKioskPinX: zoomKioskPinX ?? this.zoomKioskPinX,
      zoomKioskPinY: zoomKioskPinY ?? this.zoomKioskPinY,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      geohash: geohash ?? this.geohash,
      nid: nid ?? this.nid,
      openSoon: openSoon ?? this.openSoon,
      path: path ?? this.path,
      trtId: trtId ?? this.trtId,
      isSalesRepresentative:
          isSalesRepresentative ?? this.isSalesRepresentative,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}

class $TeslaLocationsTable extends TeslaLocations
    with TableInfo<$TeslaLocationsTable, TeslaLocation> {
  final GeneratedDatabase _db;
  final String _alias;
  $TeslaLocationsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressLine1Meta =
      const VerificationMeta('addressLine1');
  GeneratedTextColumn _addressLine1;
  @override
  GeneratedTextColumn get addressLine1 =>
      _addressLine1 ??= _constructAddressLine1();
  GeneratedTextColumn _constructAddressLine1() {
    return GeneratedTextColumn(
      'address_line1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressLine2Meta =
      const VerificationMeta('addressLine2');
  GeneratedTextColumn _addressLine2;
  @override
  GeneratedTextColumn get addressLine2 =>
      _addressLine2 ??= _constructAddressLine2();
  GeneratedTextColumn _constructAddressLine2() {
    return GeneratedTextColumn(
      'address_line2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn(
      'city',
      $tableName,
      true,
    );
  }

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedTextColumn _country;
  @override
  GeneratedTextColumn get country => _country ??= _constructCountry();
  GeneratedTextColumn _constructCountry() {
    return GeneratedTextColumn(
      'country',
      $tableName,
      true,
    );
  }

  final VerificationMeta _postalCodeMeta = const VerificationMeta('postalCode');
  GeneratedTextColumn _postalCode;
  @override
  GeneratedTextColumn get postalCode => _postalCode ??= _constructPostalCode();
  GeneratedTextColumn _constructPostalCode() {
    return GeneratedTextColumn(
      'postal_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _provinceStateMeta =
      const VerificationMeta('provinceState');
  GeneratedTextColumn _provinceState;
  @override
  GeneratedTextColumn get provinceState =>
      _provinceState ??= _constructProvinceState();
  GeneratedTextColumn _constructProvinceState() {
    return GeneratedTextColumn(
      'province_state',
      $tableName,
      true,
    );
  }

  final VerificationMeta _regionMeta = const VerificationMeta('region');
  GeneratedTextColumn _region;
  @override
  GeneratedTextColumn get region => _region ??= _constructRegion();
  GeneratedTextColumn _constructRegion() {
    return GeneratedTextColumn(
      'region',
      $tableName,
      true,
    );
  }

  final VerificationMeta _subRegionMeta = const VerificationMeta('subRegion');
  GeneratedTextColumn _subRegion;
  @override
  GeneratedTextColumn get subRegion => _subRegion ??= _constructSubRegion();
  GeneratedTextColumn _constructSubRegion() {
    return GeneratedTextColumn(
      'sub_region',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressNotesMeta =
      const VerificationMeta('addressNotes');
  GeneratedTextColumn _addressNotes;
  @override
  GeneratedTextColumn get addressNotes =>
      _addressNotes ??= _constructAddressNotes();
  GeneratedTextColumn _constructAddressNotes() {
    return GeneratedTextColumn(
      'address_notes',
      $tableName,
      true,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn(
      'address',
      $tableName,
      true,
    );
  }

  final VerificationMeta _amenitiesMeta = const VerificationMeta('amenities');
  GeneratedTextColumn _amenities;
  @override
  GeneratedTextColumn get amenities => _amenities ??= _constructAmenities();
  GeneratedTextColumn _constructAmenities() {
    return GeneratedTextColumn(
      'amenities',
      $tableName,
      true,
    );
  }

  final VerificationMeta _baiduLatMeta = const VerificationMeta('baiduLat');
  GeneratedRealColumn _baiduLat;
  @override
  GeneratedRealColumn get baiduLat => _baiduLat ??= _constructBaiduLat();
  GeneratedRealColumn _constructBaiduLat() {
    return GeneratedRealColumn(
      'baidu_lat',
      $tableName,
      true,
    );
  }

  final VerificationMeta _baiduLngMeta = const VerificationMeta('baiduLng');
  GeneratedRealColumn _baiduLng;
  @override
  GeneratedRealColumn get baiduLng => _baiduLng ??= _constructBaiduLng();
  GeneratedRealColumn _constructBaiduLng() {
    return GeneratedRealColumn(
      'baidu_lng',
      $tableName,
      true,
    );
  }

  final VerificationMeta _chargersMeta = const VerificationMeta('chargers');
  GeneratedTextColumn _chargers;
  @override
  GeneratedTextColumn get chargers => _chargers ??= _constructChargers();
  GeneratedTextColumn _constructChargers() {
    return GeneratedTextColumn(
      'chargers',
      $tableName,
      true,
    );
  }

  final VerificationMeta _destinationChargerLogoMeta =
      const VerificationMeta('destinationChargerLogo');
  GeneratedTextColumn _destinationChargerLogo;
  @override
  GeneratedTextColumn get destinationChargerLogo =>
      _destinationChargerLogo ??= _constructDestinationChargerLogo();
  GeneratedTextColumn _constructDestinationChargerLogo() {
    return GeneratedTextColumn(
      'destination_charger_logo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _destinationWebsiteMeta =
      const VerificationMeta('destinationWebsite');
  GeneratedTextColumn _destinationWebsite;
  @override
  GeneratedTextColumn get destinationWebsite =>
      _destinationWebsite ??= _constructDestinationWebsite();
  GeneratedTextColumn _constructDestinationWebsite() {
    return GeneratedTextColumn(
      'destination_website',
      $tableName,
      true,
    );
  }

  final VerificationMeta _directionsLinkMeta =
      const VerificationMeta('directionsLink');
  GeneratedTextColumn _directionsLink;
  @override
  GeneratedTextColumn get directionsLink =>
      _directionsLink ??= _constructDirectionsLink();
  GeneratedTextColumn _constructDirectionsLink() {
    return GeneratedTextColumn(
      'directions_link',
      $tableName,
      true,
    );
  }

  final VerificationMeta _emailsMeta = const VerificationMeta('emails');
  GeneratedTextColumn _emails;
  @override
  GeneratedTextColumn get emails => _emails ??= _constructEmails();
  GeneratedTextColumn _constructEmails() {
    return GeneratedTextColumn(
      'emails',
      $tableName,
      true,
    );
  }

  final VerificationMeta _geocodeMeta = const VerificationMeta('geocode');
  GeneratedTextColumn _geocode;
  @override
  GeneratedTextColumn get geocode => _geocode ??= _constructGeocode();
  GeneratedTextColumn _constructGeocode() {
    return GeneratedTextColumn(
      'geocode',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hoursMeta = const VerificationMeta('hours');
  GeneratedTextColumn _hours;
  @override
  GeneratedTextColumn get hours => _hours ??= _constructHours();
  GeneratedTextColumn _constructHours() {
    return GeneratedTextColumn(
      'hours',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isGalleryMeta = const VerificationMeta('isGallery');
  GeneratedBoolColumn _isGallery;
  @override
  GeneratedBoolColumn get isGallery => _isGallery ??= _constructIsGallery();
  GeneratedBoolColumn _constructIsGallery() {
    return GeneratedBoolColumn(
      'is_gallery',
      $tableName,
      true,
    );
  }

  final VerificationMeta _kioskPinXMeta = const VerificationMeta('kioskPinX');
  GeneratedRealColumn _kioskPinX;
  @override
  GeneratedRealColumn get kioskPinX => _kioskPinX ??= _constructKioskPinX();
  GeneratedRealColumn _constructKioskPinX() {
    return GeneratedRealColumn(
      'kiosk_pin_x',
      $tableName,
      true,
    );
  }

  final VerificationMeta _kioskPinYMeta = const VerificationMeta('kioskPinY');
  GeneratedRealColumn _kioskPinY;
  @override
  GeneratedRealColumn get kioskPinY => _kioskPinY ??= _constructKioskPinY();
  GeneratedRealColumn _constructKioskPinY() {
    return GeneratedRealColumn(
      'kiosk_pin_y',
      $tableName,
      true,
    );
  }

  final VerificationMeta _zoomKioskPinXMeta =
      const VerificationMeta('zoomKioskPinX');
  GeneratedRealColumn _zoomKioskPinX;
  @override
  GeneratedRealColumn get zoomKioskPinX =>
      _zoomKioskPinX ??= _constructZoomKioskPinX();
  GeneratedRealColumn _constructZoomKioskPinX() {
    return GeneratedRealColumn(
      'zoom_kiosk_pin_x',
      $tableName,
      true,
    );
  }

  final VerificationMeta _zoomKioskPinYMeta =
      const VerificationMeta('zoomKioskPinY');
  GeneratedRealColumn _zoomKioskPinY;
  @override
  GeneratedRealColumn get zoomKioskPinY =>
      _zoomKioskPinY ??= _constructZoomKioskPinY();
  GeneratedRealColumn _constructZoomKioskPinY() {
    return GeneratedRealColumn(
      'zoom_kiosk_pin_y',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _geohashMeta = const VerificationMeta('geohash');
  GeneratedTextColumn _geohash;
  @override
  GeneratedTextColumn get geohash => _geohash ??= _constructGeohash();
  GeneratedTextColumn _constructGeohash() {
    return GeneratedTextColumn(
      'geohash',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nidMeta = const VerificationMeta('nid');
  GeneratedRealColumn _nid;
  @override
  GeneratedRealColumn get nid => _nid ??= _constructNid();
  GeneratedRealColumn _constructNid() {
    return GeneratedRealColumn(
      'nid',
      $tableName,
      true,
    );
  }

  final VerificationMeta _openSoonMeta = const VerificationMeta('openSoon');
  GeneratedRealColumn _openSoon;
  @override
  GeneratedRealColumn get openSoon => _openSoon ??= _constructOpenSoon();
  GeneratedRealColumn _constructOpenSoon() {
    return GeneratedRealColumn(
      'open_soon',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  GeneratedTextColumn _path;
  @override
  GeneratedTextColumn get path => _path ??= _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn(
      'path',
      $tableName,
      true,
    );
  }

  final VerificationMeta _trtIdMeta = const VerificationMeta('trtId');
  GeneratedTextColumn _trtId;
  @override
  GeneratedTextColumn get trtId => _trtId ??= _constructTrtId();
  GeneratedTextColumn _constructTrtId() {
    return GeneratedTextColumn(
      'trt_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isSalesRepresentativeMeta =
      const VerificationMeta('isSalesRepresentative');
  GeneratedBoolColumn _isSalesRepresentative;
  @override
  GeneratedBoolColumn get isSalesRepresentative =>
      _isSalesRepresentative ??= _constructIsSalesRepresentative();
  GeneratedBoolColumn _constructIsSalesRepresentative() {
    return GeneratedBoolColumn(
      'is_sales_representative',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedDateTimeColumn _lastUpdated;
  @override
  GeneratedDateTimeColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();
  GeneratedDateTimeColumn _constructLastUpdated() {
    return GeneratedDateTimeColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        type,
        addressLine1,
        addressLine2,
        city,
        country,
        postalCode,
        provinceState,
        region,
        subRegion,
        addressNotes,
        address,
        amenities,
        baiduLat,
        baiduLng,
        chargers,
        destinationChargerLogo,
        destinationWebsite,
        directionsLink,
        emails,
        geocode,
        hours,
        isGallery,
        kioskPinX,
        kioskPinY,
        zoomKioskPinX,
        zoomKioskPinY,
        latitude,
        longitude,
        geohash,
        nid,
        openSoon,
        path,
        trtId,
        isSalesRepresentative,
        lastUpdated
      ];
  @override
  $TeslaLocationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tesla_locations';
  @override
  final String actualTableName = 'tesla_locations';
  @override
  VerificationContext validateIntegrity(TeslaLocationsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.type.present) {
      context.handle(
          _typeMeta, type.isAcceptableValue(d.type.value, _typeMeta));
    } else if (type.isRequired && isInserting) {
      context.missing(_typeMeta);
    }
    if (d.addressLine1.present) {
      context.handle(
          _addressLine1Meta,
          addressLine1.isAcceptableValue(
              d.addressLine1.value, _addressLine1Meta));
    } else if (addressLine1.isRequired && isInserting) {
      context.missing(_addressLine1Meta);
    }
    if (d.addressLine2.present) {
      context.handle(
          _addressLine2Meta,
          addressLine2.isAcceptableValue(
              d.addressLine2.value, _addressLine2Meta));
    } else if (addressLine2.isRequired && isInserting) {
      context.missing(_addressLine2Meta);
    }
    if (d.city.present) {
      context.handle(
          _cityMeta, city.isAcceptableValue(d.city.value, _cityMeta));
    } else if (city.isRequired && isInserting) {
      context.missing(_cityMeta);
    }
    if (d.country.present) {
      context.handle(_countryMeta,
          country.isAcceptableValue(d.country.value, _countryMeta));
    } else if (country.isRequired && isInserting) {
      context.missing(_countryMeta);
    }
    if (d.postalCode.present) {
      context.handle(_postalCodeMeta,
          postalCode.isAcceptableValue(d.postalCode.value, _postalCodeMeta));
    } else if (postalCode.isRequired && isInserting) {
      context.missing(_postalCodeMeta);
    }
    if (d.provinceState.present) {
      context.handle(
          _provinceStateMeta,
          provinceState.isAcceptableValue(
              d.provinceState.value, _provinceStateMeta));
    } else if (provinceState.isRequired && isInserting) {
      context.missing(_provinceStateMeta);
    }
    if (d.region.present) {
      context.handle(
          _regionMeta, region.isAcceptableValue(d.region.value, _regionMeta));
    } else if (region.isRequired && isInserting) {
      context.missing(_regionMeta);
    }
    if (d.subRegion.present) {
      context.handle(_subRegionMeta,
          subRegion.isAcceptableValue(d.subRegion.value, _subRegionMeta));
    } else if (subRegion.isRequired && isInserting) {
      context.missing(_subRegionMeta);
    }
    if (d.addressNotes.present) {
      context.handle(
          _addressNotesMeta,
          addressNotes.isAcceptableValue(
              d.addressNotes.value, _addressNotesMeta));
    } else if (addressNotes.isRequired && isInserting) {
      context.missing(_addressNotesMeta);
    }
    if (d.address.present) {
      context.handle(_addressMeta,
          address.isAcceptableValue(d.address.value, _addressMeta));
    } else if (address.isRequired && isInserting) {
      context.missing(_addressMeta);
    }
    if (d.amenities.present) {
      context.handle(_amenitiesMeta,
          amenities.isAcceptableValue(d.amenities.value, _amenitiesMeta));
    } else if (amenities.isRequired && isInserting) {
      context.missing(_amenitiesMeta);
    }
    if (d.baiduLat.present) {
      context.handle(_baiduLatMeta,
          baiduLat.isAcceptableValue(d.baiduLat.value, _baiduLatMeta));
    } else if (baiduLat.isRequired && isInserting) {
      context.missing(_baiduLatMeta);
    }
    if (d.baiduLng.present) {
      context.handle(_baiduLngMeta,
          baiduLng.isAcceptableValue(d.baiduLng.value, _baiduLngMeta));
    } else if (baiduLng.isRequired && isInserting) {
      context.missing(_baiduLngMeta);
    }
    if (d.chargers.present) {
      context.handle(_chargersMeta,
          chargers.isAcceptableValue(d.chargers.value, _chargersMeta));
    } else if (chargers.isRequired && isInserting) {
      context.missing(_chargersMeta);
    }
    if (d.destinationChargerLogo.present) {
      context.handle(
          _destinationChargerLogoMeta,
          destinationChargerLogo.isAcceptableValue(
              d.destinationChargerLogo.value, _destinationChargerLogoMeta));
    } else if (destinationChargerLogo.isRequired && isInserting) {
      context.missing(_destinationChargerLogoMeta);
    }
    if (d.destinationWebsite.present) {
      context.handle(
          _destinationWebsiteMeta,
          destinationWebsite.isAcceptableValue(
              d.destinationWebsite.value, _destinationWebsiteMeta));
    } else if (destinationWebsite.isRequired && isInserting) {
      context.missing(_destinationWebsiteMeta);
    }
    if (d.directionsLink.present) {
      context.handle(
          _directionsLinkMeta,
          directionsLink.isAcceptableValue(
              d.directionsLink.value, _directionsLinkMeta));
    } else if (directionsLink.isRequired && isInserting) {
      context.missing(_directionsLinkMeta);
    }
    if (d.emails.present) {
      context.handle(
          _emailsMeta, emails.isAcceptableValue(d.emails.value, _emailsMeta));
    } else if (emails.isRequired && isInserting) {
      context.missing(_emailsMeta);
    }
    if (d.geocode.present) {
      context.handle(_geocodeMeta,
          geocode.isAcceptableValue(d.geocode.value, _geocodeMeta));
    } else if (geocode.isRequired && isInserting) {
      context.missing(_geocodeMeta);
    }
    if (d.hours.present) {
      context.handle(
          _hoursMeta, hours.isAcceptableValue(d.hours.value, _hoursMeta));
    } else if (hours.isRequired && isInserting) {
      context.missing(_hoursMeta);
    }
    if (d.isGallery.present) {
      context.handle(_isGalleryMeta,
          isGallery.isAcceptableValue(d.isGallery.value, _isGalleryMeta));
    } else if (isGallery.isRequired && isInserting) {
      context.missing(_isGalleryMeta);
    }
    if (d.kioskPinX.present) {
      context.handle(_kioskPinXMeta,
          kioskPinX.isAcceptableValue(d.kioskPinX.value, _kioskPinXMeta));
    } else if (kioskPinX.isRequired && isInserting) {
      context.missing(_kioskPinXMeta);
    }
    if (d.kioskPinY.present) {
      context.handle(_kioskPinYMeta,
          kioskPinY.isAcceptableValue(d.kioskPinY.value, _kioskPinYMeta));
    } else if (kioskPinY.isRequired && isInserting) {
      context.missing(_kioskPinYMeta);
    }
    if (d.zoomKioskPinX.present) {
      context.handle(
          _zoomKioskPinXMeta,
          zoomKioskPinX.isAcceptableValue(
              d.zoomKioskPinX.value, _zoomKioskPinXMeta));
    } else if (zoomKioskPinX.isRequired && isInserting) {
      context.missing(_zoomKioskPinXMeta);
    }
    if (d.zoomKioskPinY.present) {
      context.handle(
          _zoomKioskPinYMeta,
          zoomKioskPinY.isAcceptableValue(
              d.zoomKioskPinY.value, _zoomKioskPinYMeta));
    } else if (zoomKioskPinY.isRequired && isInserting) {
      context.missing(_zoomKioskPinYMeta);
    }
    if (d.latitude.present) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableValue(d.latitude.value, _latitudeMeta));
    } else if (latitude.isRequired && isInserting) {
      context.missing(_latitudeMeta);
    }
    if (d.longitude.present) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableValue(d.longitude.value, _longitudeMeta));
    } else if (longitude.isRequired && isInserting) {
      context.missing(_longitudeMeta);
    }
    if (d.geohash.present) {
      context.handle(_geohashMeta,
          geohash.isAcceptableValue(d.geohash.value, _geohashMeta));
    } else if (geohash.isRequired && isInserting) {
      context.missing(_geohashMeta);
    }
    if (d.nid.present) {
      context.handle(_nidMeta, nid.isAcceptableValue(d.nid.value, _nidMeta));
    } else if (nid.isRequired && isInserting) {
      context.missing(_nidMeta);
    }
    if (d.openSoon.present) {
      context.handle(_openSoonMeta,
          openSoon.isAcceptableValue(d.openSoon.value, _openSoonMeta));
    } else if (openSoon.isRequired && isInserting) {
      context.missing(_openSoonMeta);
    }
    if (d.path.present) {
      context.handle(
          _pathMeta, path.isAcceptableValue(d.path.value, _pathMeta));
    } else if (path.isRequired && isInserting) {
      context.missing(_pathMeta);
    }
    if (d.trtId.present) {
      context.handle(
          _trtIdMeta, trtId.isAcceptableValue(d.trtId.value, _trtIdMeta));
    } else if (trtId.isRequired && isInserting) {
      context.missing(_trtIdMeta);
    }
    if (d.isSalesRepresentative.present) {
      context.handle(
          _isSalesRepresentativeMeta,
          isSalesRepresentative.isAcceptableValue(
              d.isSalesRepresentative.value, _isSalesRepresentativeMeta));
    } else if (isSalesRepresentative.isRequired && isInserting) {
      context.missing(_isSalesRepresentativeMeta);
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    } else if (lastUpdated.isRequired && isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TeslaLocation map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TeslaLocation.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TeslaLocationsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<String, StringType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.type.present) {
      map['type'] = Variable<String, StringType>(d.type.value);
    }
    if (d.addressLine1.present) {
      map['address_line1'] = Variable<String, StringType>(d.addressLine1.value);
    }
    if (d.addressLine2.present) {
      map['address_line2'] = Variable<String, StringType>(d.addressLine2.value);
    }
    if (d.city.present) {
      map['city'] = Variable<String, StringType>(d.city.value);
    }
    if (d.country.present) {
      map['country'] = Variable<String, StringType>(d.country.value);
    }
    if (d.postalCode.present) {
      map['postal_code'] = Variable<String, StringType>(d.postalCode.value);
    }
    if (d.provinceState.present) {
      map['province_state'] =
          Variable<String, StringType>(d.provinceState.value);
    }
    if (d.region.present) {
      map['region'] = Variable<String, StringType>(d.region.value);
    }
    if (d.subRegion.present) {
      map['sub_region'] = Variable<String, StringType>(d.subRegion.value);
    }
    if (d.addressNotes.present) {
      map['address_notes'] = Variable<String, StringType>(d.addressNotes.value);
    }
    if (d.address.present) {
      map['address'] = Variable<String, StringType>(d.address.value);
    }
    if (d.amenities.present) {
      map['amenities'] = Variable<String, StringType>(d.amenities.value);
    }
    if (d.baiduLat.present) {
      map['baidu_lat'] = Variable<double, RealType>(d.baiduLat.value);
    }
    if (d.baiduLng.present) {
      map['baidu_lng'] = Variable<double, RealType>(d.baiduLng.value);
    }
    if (d.chargers.present) {
      map['chargers'] = Variable<String, StringType>(d.chargers.value);
    }
    if (d.destinationChargerLogo.present) {
      map['destination_charger_logo'] =
          Variable<String, StringType>(d.destinationChargerLogo.value);
    }
    if (d.destinationWebsite.present) {
      map['destination_website'] =
          Variable<String, StringType>(d.destinationWebsite.value);
    }
    if (d.directionsLink.present) {
      map['directions_link'] =
          Variable<String, StringType>(d.directionsLink.value);
    }
    if (d.emails.present) {
      map['emails'] = Variable<String, StringType>(d.emails.value);
    }
    if (d.geocode.present) {
      map['geocode'] = Variable<String, StringType>(d.geocode.value);
    }
    if (d.hours.present) {
      map['hours'] = Variable<String, StringType>(d.hours.value);
    }
    if (d.isGallery.present) {
      map['is_gallery'] = Variable<bool, BoolType>(d.isGallery.value);
    }
    if (d.kioskPinX.present) {
      map['kiosk_pin_x'] = Variable<double, RealType>(d.kioskPinX.value);
    }
    if (d.kioskPinY.present) {
      map['kiosk_pin_y'] = Variable<double, RealType>(d.kioskPinY.value);
    }
    if (d.zoomKioskPinX.present) {
      map['zoom_kiosk_pin_x'] =
          Variable<double, RealType>(d.zoomKioskPinX.value);
    }
    if (d.zoomKioskPinY.present) {
      map['zoom_kiosk_pin_y'] =
          Variable<double, RealType>(d.zoomKioskPinY.value);
    }
    if (d.latitude.present) {
      map['latitude'] = Variable<double, RealType>(d.latitude.value);
    }
    if (d.longitude.present) {
      map['longitude'] = Variable<double, RealType>(d.longitude.value);
    }
    if (d.geohash.present) {
      map['geohash'] = Variable<String, StringType>(d.geohash.value);
    }
    if (d.nid.present) {
      map['nid'] = Variable<double, RealType>(d.nid.value);
    }
    if (d.openSoon.present) {
      map['open_soon'] = Variable<double, RealType>(d.openSoon.value);
    }
    if (d.path.present) {
      map['path'] = Variable<String, StringType>(d.path.value);
    }
    if (d.trtId.present) {
      map['trt_id'] = Variable<String, StringType>(d.trtId.value);
    }
    if (d.isSalesRepresentative.present) {
      map['is_sales_representative'] =
          Variable<bool, BoolType>(d.isSalesRepresentative.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] =
          Variable<DateTime, DateTimeType>(d.lastUpdated.value);
    }
    return map;
  }

  @override
  $TeslaLocationsTable createAlias(String alias) {
    return $TeslaLocationsTable(_db, alias);
  }
}

abstract class _$DatabaseService extends GeneratedDatabase {
  _$DatabaseService(QueryExecutor e) : super(SqlTypeSystem.withDefaults(), e);
  $TeslaLocationsTable _teslaLocations;
  $TeslaLocationsTable get teslaLocations =>
      _teslaLocations ??= $TeslaLocationsTable(this);
  LocationsDao _locationsDao;
  LocationsDao get locationsDao =>
      _locationsDao ??= LocationsDao(this as DatabaseService);
  @override
  List<TableInfo> get allTables => [teslaLocations];
}
