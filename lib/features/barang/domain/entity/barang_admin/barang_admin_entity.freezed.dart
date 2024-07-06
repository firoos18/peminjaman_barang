// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_admin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarangAdminEntity _$BarangAdminEntityFromJson(Map<String, dynamic> json) {
  return _BarangAdminEntity.fromJson(json);
}

/// @nodoc
mixin _$BarangAdminEntity {
  String? get id => throw _privateConstructorUsedError;
  BarangEntity? get barang => throw _privateConstructorUsedError;
  UserEntity? get admin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangAdminEntityCopyWith<BarangAdminEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangAdminEntityCopyWith<$Res> {
  factory $BarangAdminEntityCopyWith(
          BarangAdminEntity value, $Res Function(BarangAdminEntity) then) =
      _$BarangAdminEntityCopyWithImpl<$Res, BarangAdminEntity>;
  @useResult
  $Res call({String? id, BarangEntity? barang, UserEntity? admin});

  $BarangEntityCopyWith<$Res>? get barang;
  $UserEntityCopyWith<$Res>? get admin;
}

/// @nodoc
class _$BarangAdminEntityCopyWithImpl<$Res, $Val extends BarangAdminEntity>
    implements $BarangAdminEntityCopyWith<$Res> {
  _$BarangAdminEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barang = freezed,
    Object? admin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as BarangEntity?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get admin {
    if (_value.admin == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.admin!, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BarangAdminEntityImplCopyWith<$Res>
    implements $BarangAdminEntityCopyWith<$Res> {
  factory _$$BarangAdminEntityImplCopyWith(_$BarangAdminEntityImpl value,
          $Res Function(_$BarangAdminEntityImpl) then) =
      __$$BarangAdminEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, BarangEntity? barang, UserEntity? admin});

  @override
  $BarangEntityCopyWith<$Res>? get barang;
  @override
  $UserEntityCopyWith<$Res>? get admin;
}

/// @nodoc
class __$$BarangAdminEntityImplCopyWithImpl<$Res>
    extends _$BarangAdminEntityCopyWithImpl<$Res, _$BarangAdminEntityImpl>
    implements _$$BarangAdminEntityImplCopyWith<$Res> {
  __$$BarangAdminEntityImplCopyWithImpl(_$BarangAdminEntityImpl _value,
      $Res Function(_$BarangAdminEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barang = freezed,
    Object? admin = freezed,
  }) {
    return _then(_$BarangAdminEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as BarangEntity?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangAdminEntityImpl implements _BarangAdminEntity {
  const _$BarangAdminEntityImpl({this.id, this.barang, this.admin});

  factory _$BarangAdminEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangAdminEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final BarangEntity? barang;
  @override
  final UserEntity? admin;

  @override
  String toString() {
    return 'BarangAdminEntity(id: $id, barang: $barang, admin: $admin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangAdminEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barang, barang) || other.barang == barang) &&
            (identical(other.admin, admin) || other.admin == admin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, barang, admin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangAdminEntityImplCopyWith<_$BarangAdminEntityImpl> get copyWith =>
      __$$BarangAdminEntityImplCopyWithImpl<_$BarangAdminEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangAdminEntityImplToJson(
      this,
    );
  }
}

abstract class _BarangAdminEntity implements BarangAdminEntity {
  const factory _BarangAdminEntity(
      {final String? id,
      final BarangEntity? barang,
      final UserEntity? admin}) = _$BarangAdminEntityImpl;

  factory _BarangAdminEntity.fromJson(Map<String, dynamic> json) =
      _$BarangAdminEntityImpl.fromJson;

  @override
  String? get id;
  @override
  BarangEntity? get barang;
  @override
  UserEntity? get admin;
  @override
  @JsonKey(ignore: true)
  _$$BarangAdminEntityImplCopyWith<_$BarangAdminEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
