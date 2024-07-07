// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinjam_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PinjamResponseEntity _$PinjamResponseEntityFromJson(Map<String, dynamic> json) {
  return _PinjamResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$PinjamResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinjamResponseEntityCopyWith<PinjamResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinjamResponseEntityCopyWith<$Res> {
  factory $PinjamResponseEntityCopyWith(PinjamResponseEntity value,
          $Res Function(PinjamResponseEntity) then) =
      _$PinjamResponseEntityCopyWithImpl<$Res, PinjamResponseEntity>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$PinjamResponseEntityCopyWithImpl<$Res,
        $Val extends PinjamResponseEntity>
    implements $PinjamResponseEntityCopyWith<$Res> {
  _$PinjamResponseEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$PinjamResponseEntityImplCopyWith<$Res>
    implements $PinjamResponseEntityCopyWith<$Res> {
  factory _$$PinjamResponseEntityImplCopyWith(_$PinjamResponseEntityImpl value,
          $Res Function(_$PinjamResponseEntityImpl) then) =
      __$$PinjamResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$PinjamResponseEntityImplCopyWithImpl<$Res>
    extends _$PinjamResponseEntityCopyWithImpl<$Res, _$PinjamResponseEntityImpl>
    implements _$$PinjamResponseEntityImplCopyWith<$Res> {
  __$$PinjamResponseEntityImplCopyWithImpl(_$PinjamResponseEntityImpl _value,
      $Res Function(_$PinjamResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PinjamResponseEntityImpl(
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
class _$PinjamResponseEntityImpl implements _PinjamResponseEntity {
  const _$PinjamResponseEntityImpl({this.status, this.message});

  factory _$PinjamResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PinjamResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'PinjamResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinjamResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinjamResponseEntityImplCopyWith<_$PinjamResponseEntityImpl>
      get copyWith =>
          __$$PinjamResponseEntityImplCopyWithImpl<_$PinjamResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinjamResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _PinjamResponseEntity implements PinjamResponseEntity {
  const factory _PinjamResponseEntity(
      {final int? status, final String? message}) = _$PinjamResponseEntityImpl;

  factory _PinjamResponseEntity.fromJson(Map<String, dynamic> json) =
      _$PinjamResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PinjamResponseEntityImplCopyWith<_$PinjamResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
