// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_admin_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarangAdminResponseEntity _$BarangAdminResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _BarangAdminResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$BarangAdminResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BarangAdminEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangAdminResponseEntityCopyWith<BarangAdminResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangAdminResponseEntityCopyWith<$Res> {
  factory $BarangAdminResponseEntityCopyWith(BarangAdminResponseEntity value,
          $Res Function(BarangAdminResponseEntity) then) =
      _$BarangAdminResponseEntityCopyWithImpl<$Res, BarangAdminResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<BarangAdminEntity>? data});
}

/// @nodoc
class _$BarangAdminResponseEntityCopyWithImpl<$Res,
        $Val extends BarangAdminResponseEntity>
    implements $BarangAdminResponseEntityCopyWith<$Res> {
  _$BarangAdminResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BarangAdminEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangAdminResponseEntityImplCopyWith<$Res>
    implements $BarangAdminResponseEntityCopyWith<$Res> {
  factory _$$BarangAdminResponseEntityImplCopyWith(
          _$BarangAdminResponseEntityImpl value,
          $Res Function(_$BarangAdminResponseEntityImpl) then) =
      __$$BarangAdminResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<BarangAdminEntity>? data});
}

/// @nodoc
class __$$BarangAdminResponseEntityImplCopyWithImpl<$Res>
    extends _$BarangAdminResponseEntityCopyWithImpl<$Res,
        _$BarangAdminResponseEntityImpl>
    implements _$$BarangAdminResponseEntityImplCopyWith<$Res> {
  __$$BarangAdminResponseEntityImplCopyWithImpl(
      _$BarangAdminResponseEntityImpl _value,
      $Res Function(_$BarangAdminResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BarangAdminResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BarangAdminEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangAdminResponseEntityImpl implements _BarangAdminResponseEntity {
  const _$BarangAdminResponseEntityImpl(
      {this.status, this.message, final List<BarangAdminEntity>? data})
      : _data = data;

  factory _$BarangAdminResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangAdminResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<BarangAdminEntity>? _data;
  @override
  List<BarangAdminEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BarangAdminResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangAdminResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangAdminResponseEntityImplCopyWith<_$BarangAdminResponseEntityImpl>
      get copyWith => __$$BarangAdminResponseEntityImplCopyWithImpl<
          _$BarangAdminResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangAdminResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _BarangAdminResponseEntity implements BarangAdminResponseEntity {
  const factory _BarangAdminResponseEntity(
      {final int? status,
      final String? message,
      final List<BarangAdminEntity>? data}) = _$BarangAdminResponseEntityImpl;

  factory _BarangAdminResponseEntity.fromJson(Map<String, dynamic> json) =
      _$BarangAdminResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<BarangAdminEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BarangAdminResponseEntityImplCopyWith<_$BarangAdminResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
