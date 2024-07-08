// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peminjaman_transaksi_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeminjamanTransaksiEntity _$PeminjamanTransaksiEntityFromJson(
    Map<String, dynamic> json) {
  return _PeminjamanTransaksiEntity.fromJson(json);
}

/// @nodoc
mixin _$PeminjamanTransaksiEntity {
  String? get id => throw _privateConstructorUsedError;
  UserEntity? get peminjam => throw _privateConstructorUsedError;
  String? get barang => throw _privateConstructorUsedError;
  int? get jumlah => throw _privateConstructorUsedError;
  DateTime? get tanggalPinjam => throw _privateConstructorUsedError;
  DateTime? get tanggalKembali => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeminjamanTransaksiEntityCopyWith<PeminjamanTransaksiEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeminjamanTransaksiEntityCopyWith<$Res> {
  factory $PeminjamanTransaksiEntityCopyWith(PeminjamanTransaksiEntity value,
          $Res Function(PeminjamanTransaksiEntity) then) =
      _$PeminjamanTransaksiEntityCopyWithImpl<$Res, PeminjamanTransaksiEntity>;
  @useResult
  $Res call(
      {String? id,
      UserEntity? peminjam,
      String? barang,
      int? jumlah,
      DateTime? tanggalPinjam,
      DateTime? tanggalKembali});

  $UserEntityCopyWith<$Res>? get peminjam;
}

/// @nodoc
class _$PeminjamanTransaksiEntityCopyWithImpl<$Res,
        $Val extends PeminjamanTransaksiEntity>
    implements $PeminjamanTransaksiEntityCopyWith<$Res> {
  _$PeminjamanTransaksiEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? peminjam = freezed,
    Object? barang = freezed,
    Object? jumlah = freezed,
    Object? tanggalPinjam = freezed,
    Object? tanggalKembali = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      peminjam: freezed == peminjam
          ? _value.peminjam
          : peminjam // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: freezed == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggalPinjam: freezed == tanggalPinjam
          ? _value.tanggalPinjam
          : tanggalPinjam // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggalKembali: freezed == tanggalKembali
          ? _value.tanggalKembali
          : tanggalKembali // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get peminjam {
    if (_value.peminjam == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.peminjam!, (value) {
      return _then(_value.copyWith(peminjam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeminjamanTransaksiEntityImplCopyWith<$Res>
    implements $PeminjamanTransaksiEntityCopyWith<$Res> {
  factory _$$PeminjamanTransaksiEntityImplCopyWith(
          _$PeminjamanTransaksiEntityImpl value,
          $Res Function(_$PeminjamanTransaksiEntityImpl) then) =
      __$$PeminjamanTransaksiEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      UserEntity? peminjam,
      String? barang,
      int? jumlah,
      DateTime? tanggalPinjam,
      DateTime? tanggalKembali});

  @override
  $UserEntityCopyWith<$Res>? get peminjam;
}

/// @nodoc
class __$$PeminjamanTransaksiEntityImplCopyWithImpl<$Res>
    extends _$PeminjamanTransaksiEntityCopyWithImpl<$Res,
        _$PeminjamanTransaksiEntityImpl>
    implements _$$PeminjamanTransaksiEntityImplCopyWith<$Res> {
  __$$PeminjamanTransaksiEntityImplCopyWithImpl(
      _$PeminjamanTransaksiEntityImpl _value,
      $Res Function(_$PeminjamanTransaksiEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? peminjam = freezed,
    Object? barang = freezed,
    Object? jumlah = freezed,
    Object? tanggalPinjam = freezed,
    Object? tanggalKembali = freezed,
  }) {
    return _then(_$PeminjamanTransaksiEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      peminjam: freezed == peminjam
          ? _value.peminjam
          : peminjam // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah: freezed == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggalPinjam: freezed == tanggalPinjam
          ? _value.tanggalPinjam
          : tanggalPinjam // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggalKembali: freezed == tanggalKembali
          ? _value.tanggalKembali
          : tanggalKembali // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeminjamanTransaksiEntityImpl implements _PeminjamanTransaksiEntity {
  const _$PeminjamanTransaksiEntityImpl(
      {this.id,
      this.peminjam,
      this.barang,
      this.jumlah,
      this.tanggalPinjam,
      this.tanggalKembali});

  factory _$PeminjamanTransaksiEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeminjamanTransaksiEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final UserEntity? peminjam;
  @override
  final String? barang;
  @override
  final int? jumlah;
  @override
  final DateTime? tanggalPinjam;
  @override
  final DateTime? tanggalKembali;

  @override
  String toString() {
    return 'PeminjamanTransaksiEntity(id: $id, peminjam: $peminjam, barang: $barang, jumlah: $jumlah, tanggalPinjam: $tanggalPinjam, tanggalKembali: $tanggalKembali)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeminjamanTransaksiEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.peminjam, peminjam) ||
                other.peminjam == peminjam) &&
            (identical(other.barang, barang) || other.barang == barang) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.tanggalPinjam, tanggalPinjam) ||
                other.tanggalPinjam == tanggalPinjam) &&
            (identical(other.tanggalKembali, tanggalKembali) ||
                other.tanggalKembali == tanggalKembali));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, peminjam, barang, jumlah, tanggalPinjam, tanggalKembali);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeminjamanTransaksiEntityImplCopyWith<_$PeminjamanTransaksiEntityImpl>
      get copyWith => __$$PeminjamanTransaksiEntityImplCopyWithImpl<
          _$PeminjamanTransaksiEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeminjamanTransaksiEntityImplToJson(
      this,
    );
  }
}

abstract class _PeminjamanTransaksiEntity implements PeminjamanTransaksiEntity {
  const factory _PeminjamanTransaksiEntity(
      {final String? id,
      final UserEntity? peminjam,
      final String? barang,
      final int? jumlah,
      final DateTime? tanggalPinjam,
      final DateTime? tanggalKembali}) = _$PeminjamanTransaksiEntityImpl;

  factory _PeminjamanTransaksiEntity.fromJson(Map<String, dynamic> json) =
      _$PeminjamanTransaksiEntityImpl.fromJson;

  @override
  String? get id;
  @override
  UserEntity? get peminjam;
  @override
  String? get barang;
  @override
  int? get jumlah;
  @override
  DateTime? get tanggalPinjam;
  @override
  DateTime? get tanggalKembali;
  @override
  @JsonKey(ignore: true)
  _$$PeminjamanTransaksiEntityImplCopyWith<_$PeminjamanTransaksiEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
