import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geo_location/models/serializers.dart';

part 'locations.g.dart';

abstract class Locations implements Built<Locations, LocationsBuilder> {
  Locations._();
  factory Locations([void Function(LocationsBuilder) updates]) = _$Locations;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Locations.serializer, this)
        as Map<String, dynamic>;
  }

  static Locations fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Locations.serializer, json)!;
  }

  static Serializer<Locations> get serializer => _$locationsSerializer;
  String get name;
  GeoPoint get geopoint;
  String get geohash;
}
