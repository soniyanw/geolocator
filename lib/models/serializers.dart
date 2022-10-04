import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geo_location/models/locations.dart';

part 'serializers.g.dart';

@SerializersFor([
  Locations, GeoPoint
  // TODO: add the built values that require serialization
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
