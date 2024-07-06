// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_barang_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddBarangResponseEntity _$AddBarangResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AddBarangResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AddBarangResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddBarangEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBarangResponseEntityCopyWith<AddBarangResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBarangResponseEntityCopyWith<$Res> {
  factory $AddBarangResponseEntityCopyWith(AddBarangResponseEntity value,
          $Res Function(AddBarangResponseEntity) then) =
      _$AddBarangResponseEntityCopyWithImpl<$Res, AddBarangResponseEntity>;
  @useResult
  $Res call({int? status, String? message, AddBarangEntity? data});

  $AddBarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddBarangResponseEntityCopyWithImpl<$Res,
        $Val extends AddBarangResponseEntity>
    implements $AddBarangResponseEntityCopyWith<$Res> {
  _$AddBarangResponseEntityCopyWithImpl(this._value, this._then);

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
              as AddBarangEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddBarangEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddBarangEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddBarangResponseEntityImplCopyWith<$Res>
    implements $AddBarangResponseEntityCopyWith<$Res> {
  factory _$$AddBarangResponseEntityImplCopyWith(
          _$AddBarangResponseEntityImpl value,
          $Res Function(_$AddBarangResponseEntityImpl) then) =
      __$$AddBarangResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, AddBarangEntity? data});

  @override
  $AddBarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddBarangResponseEntityImplCopyWithImpl<$Res>
    extends _$AddBarangResponseEntityCopyWithImpl<$Res,
        _$AddBarangResponseEntityImpl>
    implements _$$AddBarangResponseEntityImplCopyWith<$Res> {
  __$$AddBarangResponseEntityImplCopyWithImpl(
      _$AddBarangResponseEntityImpl _value,
      $Res Function(_$AddBarangResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddBarangResponseEntityImpl(
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
              as AddBarangEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBarangResponseEntityImpl implements _AddBarangResponseEntity {
  const _$AddBarangResponseEntityImpl({this.status, this.message, this.data});

  factory _$AddBarangResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBarangResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final AddBarangEntity? data;

  @override
  String toString() {
    return 'AddBarangResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBarangResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBarangResponseEntityImplCopyWith<_$AddBarangResponseEntityImpl>
      get copyWith => __$$AddBarangResponseEntityImplCopyWithImpl<
          _$AddBarangResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBarangResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AddBarangResponseEntity implements AddBarangResponseEntity {
  const factory _AddBarangResponseEntity(
      {final int? status,
      final String? message,
      final AddBarangEntity? data}) = _$AddBarangResponseEntityImpl;

  factory _AddBarangResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AddBarangResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  AddBarangEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddBarangResponseEntityImplCopyWith<_$AddBarangResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
