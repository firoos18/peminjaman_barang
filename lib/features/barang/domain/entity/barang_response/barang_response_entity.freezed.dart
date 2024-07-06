// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarangResponseEntity _$BarangResponseEntityFromJson(Map<String, dynamic> json) {
  return _BarangResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$BarangResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BarangEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangResponseEntityCopyWith<BarangResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangResponseEntityCopyWith<$Res> {
  factory $BarangResponseEntityCopyWith(BarangResponseEntity value,
          $Res Function(BarangResponseEntity) then) =
      _$BarangResponseEntityCopyWithImpl<$Res, BarangResponseEntity>;
  @useResult
  $Res call({int? status, String? message, BarangEntity? data});

  $BarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$BarangResponseEntityCopyWithImpl<$Res,
        $Val extends BarangResponseEntity>
    implements $BarangResponseEntityCopyWith<$Res> {
  _$BarangResponseEntityCopyWithImpl(this._value, this._then);

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
              as BarangEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarangEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BarangEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BarangResponseEntityImplCopyWith<$Res>
    implements $BarangResponseEntityCopyWith<$Res> {
  factory _$$BarangResponseEntityImplCopyWith(_$BarangResponseEntityImpl value,
          $Res Function(_$BarangResponseEntityImpl) then) =
      __$$BarangResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BarangEntity? data});

  @override
  $BarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BarangResponseEntityImplCopyWithImpl<$Res>
    extends _$BarangResponseEntityCopyWithImpl<$Res, _$BarangResponseEntityImpl>
    implements _$$BarangResponseEntityImplCopyWith<$Res> {
  __$$BarangResponseEntityImplCopyWithImpl(_$BarangResponseEntityImpl _value,
      $Res Function(_$BarangResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BarangResponseEntityImpl(
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
              as BarangEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangResponseEntityImpl implements _BarangResponseEntity {
  const _$BarangResponseEntityImpl({this.status, this.message, this.data});

  factory _$BarangResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BarangEntity? data;

  @override
  String toString() {
    return 'BarangResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangResponseEntityImpl &&
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
  _$$BarangResponseEntityImplCopyWith<_$BarangResponseEntityImpl>
      get copyWith =>
          __$$BarangResponseEntityImplCopyWithImpl<_$BarangResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _BarangResponseEntity implements BarangResponseEntity {
  const factory _BarangResponseEntity(
      {final int? status,
      final String? message,
      final BarangEntity? data}) = _$BarangResponseEntityImpl;

  factory _BarangResponseEntity.fromJson(Map<String, dynamic> json) =
      _$BarangResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BarangEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$BarangResponseEntityImplCopyWith<_$BarangResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
