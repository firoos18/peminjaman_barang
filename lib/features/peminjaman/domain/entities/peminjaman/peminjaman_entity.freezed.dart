// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peminjaman_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeminjamanEntity _$PeminjamanEntityFromJson(Map<String, dynamic> json) {
  return _PeminjamanEntity.fromJson(json);
}

/// @nodoc
mixin _$PeminjamanEntity {
  String? get id => throw _privateConstructorUsedError;
  UserEntity? get peminjam => throw _privateConstructorUsedError;
  BarangEntity? get barang => throw _privateConstructorUsedError;
  int? get jumlah => throw _privateConstructorUsedError;
  DateTime? get tanggalPinjam => throw _privateConstructorUsedError;
  DateTime? get tanggalKembali => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeminjamanEntityCopyWith<PeminjamanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeminjamanEntityCopyWith<$Res> {
  factory $PeminjamanEntityCopyWith(
          PeminjamanEntity value, $Res Function(PeminjamanEntity) then) =
      _$PeminjamanEntityCopyWithImpl<$Res, PeminjamanEntity>;
  @useResult
  $Res call(
      {String? id,
      UserEntity? peminjam,
      BarangEntity? barang,
      int? jumlah,
      DateTime? tanggalPinjam,
      DateTime? tanggalKembali});

  $UserEntityCopyWith<$Res>? get peminjam;
  $BarangEntityCopyWith<$Res>? get barang;
}

/// @nodoc
class _$PeminjamanEntityCopyWithImpl<$Res, $Val extends PeminjamanEntity>
    implements $PeminjamanEntityCopyWith<$Res> {
  _$PeminjamanEntityCopyWithImpl(this._value, this._then);

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
              as BarangEntity?,
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
abstract class _$$PeminjamanEntityImplCopyWith<$Res>
    implements $PeminjamanEntityCopyWith<$Res> {
  factory _$$PeminjamanEntityImplCopyWith(_$PeminjamanEntityImpl value,
          $Res Function(_$PeminjamanEntityImpl) then) =
      __$$PeminjamanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      UserEntity? peminjam,
      BarangEntity? barang,
      int? jumlah,
      DateTime? tanggalPinjam,
      DateTime? tanggalKembali});

  @override
  $UserEntityCopyWith<$Res>? get peminjam;
  @override
  $BarangEntityCopyWith<$Res>? get barang;
}

/// @nodoc
class __$$PeminjamanEntityImplCopyWithImpl<$Res>
    extends _$PeminjamanEntityCopyWithImpl<$Res, _$PeminjamanEntityImpl>
    implements _$$PeminjamanEntityImplCopyWith<$Res> {
  __$$PeminjamanEntityImplCopyWithImpl(_$PeminjamanEntityImpl _value,
      $Res Function(_$PeminjamanEntityImpl) _then)
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
    return _then(_$PeminjamanEntityImpl(
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
              as BarangEntity?,
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
class _$PeminjamanEntityImpl implements _PeminjamanEntity {
  const _$PeminjamanEntityImpl(
      {this.id,
      this.peminjam,
      this.barang,
      this.jumlah,
      this.tanggalPinjam,
      this.tanggalKembali});

  factory _$PeminjamanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeminjamanEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final UserEntity? peminjam;
  @override
  final BarangEntity? barang;
  @override
  final int? jumlah;
  @override
  final DateTime? tanggalPinjam;
  @override
  final DateTime? tanggalKembali;

  @override
  String toString() {
    return 'PeminjamanEntity(id: $id, peminjam: $peminjam, barang: $barang, jumlah: $jumlah, tanggalPinjam: $tanggalPinjam, tanggalKembali: $tanggalKembali)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeminjamanEntityImpl &&
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
  _$$PeminjamanEntityImplCopyWith<_$PeminjamanEntityImpl> get copyWith =>
      __$$PeminjamanEntityImplCopyWithImpl<_$PeminjamanEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeminjamanEntityImplToJson(
      this,
    );
  }
}

abstract class _PeminjamanEntity implements PeminjamanEntity {
  const factory _PeminjamanEntity(
      {final String? id,
      final UserEntity? peminjam,
      final BarangEntity? barang,
      final int? jumlah,
      final DateTime? tanggalPinjam,
      final DateTime? tanggalKembali}) = _$PeminjamanEntityImpl;

  factory _PeminjamanEntity.fromJson(Map<String, dynamic> json) =
      _$PeminjamanEntityImpl.fromJson;

  @override
  String? get id;
  @override
  UserEntity? get peminjam;
  @override
  BarangEntity? get barang;
  @override
  int? get jumlah;
  @override
  DateTime? get tanggalPinjam;
  @override
  DateTime? get tanggalKembali;
  @override
  @JsonKey(ignore: true)
  _$$PeminjamanEntityImplCopyWith<_$PeminjamanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
