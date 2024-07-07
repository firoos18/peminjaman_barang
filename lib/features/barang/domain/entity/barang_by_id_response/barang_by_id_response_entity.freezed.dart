// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barang_by_id_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarangByIdResponseEntity _$BarangByIdResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _BarangByIdResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$BarangByIdResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BarangEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarangByIdResponseEntityCopyWith<BarangByIdResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangByIdResponseEntityCopyWith<$Res> {
  factory $BarangByIdResponseEntityCopyWith(BarangByIdResponseEntity value,
          $Res Function(BarangByIdResponseEntity) then) =
      _$BarangByIdResponseEntityCopyWithImpl<$Res, BarangByIdResponseEntity>;
  @useResult
  $Res call({int? status, String? message, BarangEntity? data});

  $BarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$BarangByIdResponseEntityCopyWithImpl<$Res,
        $Val extends BarangByIdResponseEntity>
    implements $BarangByIdResponseEntityCopyWith<$Res> {
  _$BarangByIdResponseEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$BarangByIdResponseEntityImplCopyWith<$Res>
    implements $BarangByIdResponseEntityCopyWith<$Res> {
  factory _$$BarangByIdResponseEntityImplCopyWith(
          _$BarangByIdResponseEntityImpl value,
          $Res Function(_$BarangByIdResponseEntityImpl) then) =
      __$$BarangByIdResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BarangEntity? data});

  @override
  $BarangEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BarangByIdResponseEntityImplCopyWithImpl<$Res>
    extends _$BarangByIdResponseEntityCopyWithImpl<$Res,
        _$BarangByIdResponseEntityImpl>
    implements _$$BarangByIdResponseEntityImplCopyWith<$Res> {
  __$$BarangByIdResponseEntityImplCopyWithImpl(
      _$BarangByIdResponseEntityImpl _value,
      $Res Function(_$BarangByIdResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BarangByIdResponseEntityImpl(
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
class _$BarangByIdResponseEntityImpl implements _BarangByIdResponseEntity {
  const _$BarangByIdResponseEntityImpl({this.status, this.message, this.data});

  factory _$BarangByIdResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangByIdResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BarangEntity? data;

  @override
  String toString() {
    return 'BarangByIdResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangByIdResponseEntityImpl &&
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
  _$$BarangByIdResponseEntityImplCopyWith<_$BarangByIdResponseEntityImpl>
      get copyWith => __$$BarangByIdResponseEntityImplCopyWithImpl<
          _$BarangByIdResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangByIdResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _BarangByIdResponseEntity implements BarangByIdResponseEntity {
  const factory _BarangByIdResponseEntity(
      {final int? status,
      final String? message,
      final BarangEntity? data}) = _$BarangByIdResponseEntityImpl;

  factory _BarangByIdResponseEntity.fromJson(Map<String, dynamic> json) =
      _$BarangByIdResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BarangEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$BarangByIdResponseEntityImplCopyWith<_$BarangByIdResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
