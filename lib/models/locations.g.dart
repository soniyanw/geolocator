// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Locations> _$locationsSerializer = new _$LocationsSerializer();

class _$LocationsSerializer implements StructuredSerializer<Locations> {
  @override
  final Iterable<Type> types = const [Locations, _$Locations];
  @override
  final String wireName = 'Locations';

  @override
  Iterable<Object?> serialize(Serializers serializers, Locations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'geopoint',
      serializers.serialize(object.geopoint,
          specifiedType: const FullType(GeoPoint)),
      'geohash',
      serializers.serialize(object.geohash,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Locations deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'geopoint':
          result.geopoint = serializers.deserialize(value,
              specifiedType: const FullType(GeoPoint))! as GeoPoint;
          break;
        case 'geohash':
          result.geohash = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Locations extends Locations {
  @override
  final String name;
  @override
  final GeoPoint geopoint;
  @override
  final String geohash;

  factory _$Locations([void Function(LocationsBuilder)? updates]) =>
      (new LocationsBuilder()..update(updates))._build();

  _$Locations._(
      {required this.name, required this.geopoint, required this.geohash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Locations', 'name');
    BuiltValueNullFieldError.checkNotNull(geopoint, r'Locations', 'geopoint');
    BuiltValueNullFieldError.checkNotNull(geohash, r'Locations', 'geohash');
  }

  @override
  Locations rebuild(void Function(LocationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsBuilder toBuilder() => new LocationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Locations &&
        name == other.name &&
        geopoint == other.geopoint &&
        geohash == other.geohash;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), geopoint.hashCode), geohash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Locations')
          ..add('name', name)
          ..add('geopoint', geopoint)
          ..add('geohash', geohash))
        .toString();
  }
}

class LocationsBuilder implements Builder<Locations, LocationsBuilder> {
  _$Locations? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GeoPoint? _geopoint;
  GeoPoint? get geopoint => _$this._geopoint;
  set geopoint(GeoPoint? geopoint) => _$this._geopoint = geopoint;

  String? _geohash;
  String? get geohash => _$this._geohash;
  set geohash(String? geohash) => _$this._geohash = geohash;

  LocationsBuilder();

  LocationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _geopoint = $v.geopoint;
      _geohash = $v.geohash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Locations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Locations;
  }

  @override
  void update(void Function(LocationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Locations build() => _build();

  _$Locations _build() {
    final _$result = _$v ??
        new _$Locations._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Locations', 'name'),
            geopoint: BuiltValueNullFieldError.checkNotNull(
                geopoint, r'Locations', 'geopoint'),
            geohash: BuiltValueNullFieldError.checkNotNull(
                geohash, r'Locations', 'geohash'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
