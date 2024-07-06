// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseEntity _$UserResponseEntityFromJson(Map<String, dynamic> json) {
  return _UserResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseEntityCopyWith<UserResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseEntityCopyWith<$Res> {
  factory $UserResponseEntityCopyWith(
          UserResponseEntity value, $Res Function(UserResponseEntity) then) =
      _$UserResponseEntityCopyWithImpl<$Res, UserResponseEntity>;
  @useResult
  $Res call({int? status, String? message, UserEntity? data});

  $UserEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserResponseEntityCopyWithImpl<$Res, $Val extends UserResponseEntity>
    implements $UserResponseEntityCopyWith<$Res> {
  _$UserResponseEntityCopyWithImpl(this._value, this._then);

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
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseEntityImplCopyWith<$Res>
    implements $UserResponseEntityCopyWith<$Res> {
  factory _$$UserResponseEntityImplCopyWith(_$UserResponseEntityImpl value,
          $Res Function(_$UserResponseEntityImpl) then) =
      __$$UserResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, UserEntity? data});

  @override
  $UserEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserResponseEntityImplCopyWithImpl<$Res>
    extends _$UserResponseEntityCopyWithImpl<$Res, _$UserResponseEntityImpl>
    implements _$$UserResponseEntityImplCopyWith<$Res> {
  __$$UserResponseEntityImplCopyWithImpl(_$UserResponseEntityImpl _value,
      $Res Function(_$UserResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserResponseEntityImpl(
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
              as UserEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseEntityImpl implements _UserResponseEntity {
  const _$UserResponseEntityImpl({this.status, this.message, this.data});

  factory _$UserResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final UserEntity? data;

  @override
  String toString() {
    return 'UserResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseEntityImpl &&
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
  _$$UserResponseEntityImplCopyWith<_$UserResponseEntityImpl> get copyWith =>
      __$$UserResponseEntityImplCopyWithImpl<_$UserResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserResponseEntity implements UserResponseEntity {
  const factory _UserResponseEntity(
      {final int? status,
      final String? message,
      final UserEntity? data}) = _$UserResponseEntityImpl;

  factory _UserResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  UserEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseEntityImplCopyWith<_$UserResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
