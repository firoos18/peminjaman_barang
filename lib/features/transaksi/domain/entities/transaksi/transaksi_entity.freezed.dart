// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaksi_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransaksiEntity _$TransaksiEntityFromJson(Map<String, dynamic> json) {
  return _TransaksiEntity.fromJson(json);
}

/// @nodoc
mixin _$TransaksiEntity {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get tanggalPinjam => throw _privateConstructorUsedError;
  PeminjamanTransaksiEntity? get peminjaman =>
      throw _privateConstructorUsedError;
  BarangEntity? get barang => throw _privateConstructorUsedError;
  int? get unit => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransaksiEntityCopyWith<TransaksiEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiEntityCopyWith<$Res> {
  factory $TransaksiEntityCopyWith(
          TransaksiEntity value, $Res Function(TransaksiEntity) then) =
      _$TransaksiEntityCopyWithImpl<$Res, TransaksiEntity>;
  @useResult
  $Res call(
      {String? id,
      DateTime? tanggalPinjam,
      PeminjamanTransaksiEntity? peminjaman,
      BarangEntity? barang,
      int? unit,
      String? status});

  $PeminjamanTransaksiEntityCopyWith<$Res>? get peminjaman;
  $BarangEntityCopyWith<$Res>? get barang;
}

/// @nodoc
class _$TransaksiEntityCopyWithImpl<$Res, $Val extends TransaksiEntity>
    implements $TransaksiEntityCopyWith<$Res> {
  _$TransaksiEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tanggalPinjam = freezed,
    Object? peminjaman = freezed,
    Object? barang = freezed,
    Object? unit = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalPinjam: freezed == tanggalPinjam
          ? _value.tanggalPinjam
          : tanggalPinjam // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      peminjaman: freezed == peminjaman
          ? _value.peminjaman
          : peminjaman // ignore: cast_nullable_to_non_nullable
              as PeminjamanTransaksiEntity?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as BarangEntity?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeminjamanTransaksiEntityCopyWith<$Res>? get peminjaman {
    if (_value.peminjaman == null) {
      return null;
    }

    return $PeminjamanTransaksiEntityCopyWith<$Res>(_value.peminjaman!,
        (value) {
      return _then(_value.copyWith(peminjaman: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BarangEntityCopyWith<$Res>? get barang {
    if (_value.barang == null) {
      return null;
    }

    return $BarangEntityCopyWith<$Res>(_value.barang!, (value) {
      return _then(_value.copyWith(barang: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransaksiEntityImplCopyWith<$Res>
    implements $TransaksiEntityCopyWith<$Res> {
  factory _$$TransaksiEntityImplCopyWith(_$TransaksiEntityImpl value,
          $Res Function(_$TransaksiEntityImpl) then) =
      __$$TransaksiEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? tanggalPinjam,
      PeminjamanTransaksiEntity? peminjaman,
      BarangEntity? barang,
      int? unit,
      String? status});

  @override
  $PeminjamanTransaksiEntityCopyWith<$Res>? get peminjaman;
  @override
  $BarangEntityCopyWith<$Res>? get barang;
}

/// @nodoc
class __$$TransaksiEntityImplCopyWithImpl<$Res>
    extends _$TransaksiEntityCopyWithImpl<$Res, _$TransaksiEntityImpl>
    implements _$$TransaksiEntityImplCopyWith<$Res> {
  __$$TransaksiEntityImplCopyWithImpl(
      _$TransaksiEntityImpl _value, $Res Function(_$TransaksiEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tanggalPinjam = freezed,
    Object? peminjaman = freezed,
    Object? barang = freezed,
    Object? unit = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TransaksiEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalPinjam: freezed == tanggalPinjam
          ? _value.tanggalPinjam
          : tanggalPinjam // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      peminjaman: freezed == peminjaman
          ? _value.peminjaman
          : peminjaman // ignore: cast_nullable_to_non_nullable
              as PeminjamanTransaksiEntity?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as BarangEntity?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransaksiEntityImpl implements _TransaksiEntity {
  const _$TransaksiEntityImpl(
      {this.id,
      this.tanggalPinjam,
      this.peminjaman,
      this.barang,
      this.unit,
      this.status});

  factory _$TransaksiEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? tanggalPinjam;
  @override
  final PeminjamanTransaksiEntity? peminjaman;
  @override
  final BarangEntity? barang;
  @override
  final int? unit;
  @override
  final String? status;

  @override
  String toString() {
    return 'TransaksiEntity(id: $id, tanggalPinjam: $tanggalPinjam, peminjaman: $peminjaman, barang: $barang, unit: $unit, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tanggalPinjam, tanggalPinjam) ||
                other.tanggalPinjam == tanggalPinjam) &&
            (identical(other.peminjaman, peminjaman) ||
                other.peminjaman == peminjaman) &&
            (identical(other.barang, barang) || other.barang == barang) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, tanggalPinjam, peminjaman, barang, unit, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransaksiEntityImplCopyWith<_$TransaksiEntityImpl> get copyWith =>
      __$$TransaksiEntityImplCopyWithImpl<_$TransaksiEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiEntityImplToJson(
      this,
    );
  }
}

abstract class _TransaksiEntity implements TransaksiEntity {
  const factory _TransaksiEntity(
      {final String? id,
      final DateTime? tanggalPinjam,
      final PeminjamanTransaksiEntity? peminjaman,
      final BarangEntity? barang,
      final int? unit,
      final String? status}) = _$TransaksiEntityImpl;

  factory _TransaksiEntity.fromJson(Map<String, dynamic> json) =
      _$TransaksiEntityImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get tanggalPinjam;
  @override
  PeminjamanTransaksiEntity? get peminjaman;
  @override
  BarangEntity? get barang;
  @override
  int? get unit;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$TransaksiEntityImplCopyWith<_$TransaksiEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
