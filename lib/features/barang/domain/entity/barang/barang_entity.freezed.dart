// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarangEntity _$BarangEntityFromJson(Map<String, dynamic> json) {
  return _BarangEntity.fromJson(json);
}

/// @nodoc
mixin _$BarangEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get kodeBarang => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get merek => throw _privateConstructorUsedError;
  String? get jenis => throw _privateConstructorUsedError;
  int? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangEntityCopyWith<BarangEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangEntityCopyWith<$Res> {
  factory $BarangEntityCopyWith(
          BarangEntity value, $Res Function(BarangEntity) then) =
      _$BarangEntityCopyWithImpl<$Res, BarangEntity>;
  @useResult
  $Res call(
      {String? id,
      String? kodeBarang,
      String? nama,
      String? merek,
      String? jenis,
      int? unit});
}

/// @nodoc
class _$BarangEntityCopyWithImpl<$Res, $Val extends BarangEntity>
    implements $BarangEntityCopyWith<$Res> {
  _$BarangEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kodeBarang = freezed,
    Object? nama = freezed,
    Object? merek = freezed,
    Object? jenis = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: freezed == kodeBarang
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      merek: freezed == merek
          ? _value.merek
          : merek // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangEntityImplCopyWith<$Res>
    implements $BarangEntityCopyWith<$Res> {
  factory _$$BarangEntityImplCopyWith(
          _$BarangEntityImpl value, $Res Function(_$BarangEntityImpl) then) =
      __$$BarangEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? kodeBarang,
      String? nama,
      String? merek,
      String? jenis,
      int? unit});
}

/// @nodoc
class __$$BarangEntityImplCopyWithImpl<$Res>
    extends _$BarangEntityCopyWithImpl<$Res, _$BarangEntityImpl>
    implements _$$BarangEntityImplCopyWith<$Res> {
  __$$BarangEntityImplCopyWithImpl(
      _$BarangEntityImpl _value, $Res Function(_$BarangEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kodeBarang = freezed,
    Object? nama = freezed,
    Object? merek = freezed,
    Object? jenis = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$BarangEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: freezed == kodeBarang
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      merek: freezed == merek
          ? _value.merek
          : merek // ignore: cast_nullable_to_non_nullable
              as String?,
      jenis: freezed == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangEntityImpl implements _BarangEntity {
  const _$BarangEntityImpl(
      {this.id, this.kodeBarang, this.nama, this.merek, this.jenis, this.unit});

  factory _$BarangEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? kodeBarang;
  @override
  final String? nama;
  @override
  final String? merek;
  @override
  final String? jenis;
  @override
  final int? unit;

  @override
  String toString() {
    return 'BarangEntity(id: $id, kodeBarang: $kodeBarang, nama: $nama, merek: $merek, jenis: $jenis, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kodeBarang, kodeBarang) ||
                other.kodeBarang == kodeBarang) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.merek, merek) || other.merek == merek) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kodeBarang, nama, merek, jenis, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangEntityImplCopyWith<_$BarangEntityImpl> get copyWith =>
      __$$BarangEntityImplCopyWithImpl<_$BarangEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangEntityImplToJson(
      this,
    );
  }
}

abstract class _BarangEntity implements BarangEntity {
  const factory _BarangEntity(
      {final String? id,
      final String? kodeBarang,
      final String? nama,
      final String? merek,
      final String? jenis,
      final int? unit}) = _$BarangEntityImpl;

  factory _BarangEntity.fromJson(Map<String, dynamic> json) =
      _$BarangEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get kodeBarang;
  @override
  String? get nama;
  @override
  String? get merek;
  @override
  String? get jenis;
  @override
  int? get unit;
  @override
  @JsonKey(ignore: true)
  _$$BarangEntityImplCopyWith<_$BarangEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
