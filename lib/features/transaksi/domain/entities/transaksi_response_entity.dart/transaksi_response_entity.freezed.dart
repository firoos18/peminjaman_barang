// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaksi_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransaksiResponseEntity _$TransaksiResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _TransaksiResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$TransaksiResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<TransaksiEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransaksiResponseEntityCopyWith<TransaksiResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiResponseEntityCopyWith<$Res> {
  factory $TransaksiResponseEntityCopyWith(TransaksiResponseEntity value,
          $Res Function(TransaksiResponseEntity) then) =
      _$TransaksiResponseEntityCopyWithImpl<$Res, TransaksiResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<TransaksiEntity>? data});
}

/// @nodoc
class _$TransaksiResponseEntityCopyWithImpl<$Res,
        $Val extends TransaksiResponseEntity>
    implements $TransaksiResponseEntityCopyWith<$Res> {
  _$TransaksiResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<TransaksiEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransaksiResponseEntityImplCopyWith<$Res>
    implements $TransaksiResponseEntityCopyWith<$Res> {
  factory _$$TransaksiResponseEntityImplCopyWith(
          _$TransaksiResponseEntityImpl value,
          $Res Function(_$TransaksiResponseEntityImpl) then) =
      __$$TransaksiResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<TransaksiEntity>? data});
}

/// @nodoc
class __$$TransaksiResponseEntityImplCopyWithImpl<$Res>
    extends _$TransaksiResponseEntityCopyWithImpl<$Res,
        _$TransaksiResponseEntityImpl>
    implements _$$TransaksiResponseEntityImplCopyWith<$Res> {
  __$$TransaksiResponseEntityImplCopyWithImpl(
      _$TransaksiResponseEntityImpl _value,
      $Res Function(_$TransaksiResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TransaksiResponseEntityImpl(
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
              as List<TransaksiEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransaksiResponseEntityImpl implements _TransaksiResponseEntity {
  const _$TransaksiResponseEntityImpl(
      {this.status, this.message, final List<TransaksiEntity>? data})
      : _data = data;

  factory _$TransaksiResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<TransaksiEntity>? _data;
  @override
  List<TransaksiEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransaksiResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiResponseEntityImpl &&
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
  _$$TransaksiResponseEntityImplCopyWith<_$TransaksiResponseEntityImpl>
      get copyWith => __$$TransaksiResponseEntityImplCopyWithImpl<
          _$TransaksiResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _TransaksiResponseEntity implements TransaksiResponseEntity {
  const factory _TransaksiResponseEntity(
      {final int? status,
      final String? message,
      final List<TransaksiEntity>? data}) = _$TransaksiResponseEntityImpl;

  factory _TransaksiResponseEntity.fromJson(Map<String, dynamic> json) =
      _$TransaksiResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<TransaksiEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TransaksiResponseEntityImplCopyWith<_$TransaksiResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
