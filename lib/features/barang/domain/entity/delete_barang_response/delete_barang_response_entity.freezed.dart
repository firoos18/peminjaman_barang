// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_barang_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteBarangResponseEntity _$DeleteBarangResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _DeleteBarangResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$DeleteBarangResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteBarangResponseEntityCopyWith<DeleteBarangResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBarangResponseEntityCopyWith<$Res> {
  factory $DeleteBarangResponseEntityCopyWith(DeleteBarangResponseEntity value,
          $Res Function(DeleteBarangResponseEntity) then) =
      _$DeleteBarangResponseEntityCopyWithImpl<$Res,
          DeleteBarangResponseEntity>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$DeleteBarangResponseEntityCopyWithImpl<$Res,
        $Val extends DeleteBarangResponseEntity>
    implements $DeleteBarangResponseEntityCopyWith<$Res> {
  _$DeleteBarangResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteBarangResponseEntityImplCopyWith<$Res>
    implements $DeleteBarangResponseEntityCopyWith<$Res> {
  factory _$$DeleteBarangResponseEntityImplCopyWith(
          _$DeleteBarangResponseEntityImpl value,
          $Res Function(_$DeleteBarangResponseEntityImpl) then) =
      __$$DeleteBarangResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$DeleteBarangResponseEntityImplCopyWithImpl<$Res>
    extends _$DeleteBarangResponseEntityCopyWithImpl<$Res,
        _$DeleteBarangResponseEntityImpl>
    implements _$$DeleteBarangResponseEntityImplCopyWith<$Res> {
  __$$DeleteBarangResponseEntityImplCopyWithImpl(
      _$DeleteBarangResponseEntityImpl _value,
      $Res Function(_$DeleteBarangResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteBarangResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteBarangResponseEntityImpl implements _DeleteBarangResponseEntity {
  const _$DeleteBarangResponseEntityImpl({this.status, this.message});

  factory _$DeleteBarangResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteBarangResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteBarangResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBarangResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBarangResponseEntityImplCopyWith<_$DeleteBarangResponseEntityImpl>
      get copyWith => __$$DeleteBarangResponseEntityImplCopyWithImpl<
          _$DeleteBarangResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteBarangResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _DeleteBarangResponseEntity
    implements DeleteBarangResponseEntity {
  const factory _DeleteBarangResponseEntity(
      {final int? status,
      final String? message}) = _$DeleteBarangResponseEntityImpl;

  factory _DeleteBarangResponseEntity.fromJson(Map<String, dynamic> json) =
      _$DeleteBarangResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteBarangResponseEntityImplCopyWith<_$DeleteBarangResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
