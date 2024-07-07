// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peminjaman_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PeminjamanResponseEntity _$PeminjamanResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _PeminjamanResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$PeminjamanResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<PeminjamanEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeminjamanResponseEntityCopyWith<PeminjamanResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeminjamanResponseEntityCopyWith<$Res> {
  factory $PeminjamanResponseEntityCopyWith(PeminjamanResponseEntity value,
          $Res Function(PeminjamanResponseEntity) then) =
      _$PeminjamanResponseEntityCopyWithImpl<$Res, PeminjamanResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<PeminjamanEntity>? data});
}

/// @nodoc
class _$PeminjamanResponseEntityCopyWithImpl<$Res,
        $Val extends PeminjamanResponseEntity>
    implements $PeminjamanResponseEntityCopyWith<$Res> {
  _$PeminjamanResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<PeminjamanEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeminjamanResponseEntityImplCopyWith<$Res>
    implements $PeminjamanResponseEntityCopyWith<$Res> {
  factory _$$PeminjamanResponseEntityImplCopyWith(
          _$PeminjamanResponseEntityImpl value,
          $Res Function(_$PeminjamanResponseEntityImpl) then) =
      __$$PeminjamanResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<PeminjamanEntity>? data});
}

/// @nodoc
class __$$PeminjamanResponseEntityImplCopyWithImpl<$Res>
    extends _$PeminjamanResponseEntityCopyWithImpl<$Res,
        _$PeminjamanResponseEntityImpl>
    implements _$$PeminjamanResponseEntityImplCopyWith<$Res> {
  __$$PeminjamanResponseEntityImplCopyWithImpl(
      _$PeminjamanResponseEntityImpl _value,
      $Res Function(_$PeminjamanResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PeminjamanResponseEntityImpl(
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
              as List<PeminjamanEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeminjamanResponseEntityImpl implements _PeminjamanResponseEntity {
  const _$PeminjamanResponseEntityImpl(
      {this.status, this.message, final List<PeminjamanEntity>? data})
      : _data = data;

  factory _$PeminjamanResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeminjamanResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<PeminjamanEntity>? _data;
  @override
  List<PeminjamanEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PeminjamanResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeminjamanResponseEntityImpl &&
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
  _$$PeminjamanResponseEntityImplCopyWith<_$PeminjamanResponseEntityImpl>
      get copyWith => __$$PeminjamanResponseEntityImplCopyWithImpl<
          _$PeminjamanResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeminjamanResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _PeminjamanResponseEntity implements PeminjamanResponseEntity {
  const factory _PeminjamanResponseEntity(
      {final int? status,
      final String? message,
      final List<PeminjamanEntity>? data}) = _$PeminjamanResponseEntityImpl;

  factory _PeminjamanResponseEntity.fromJson(Map<String, dynamic> json) =
      _$PeminjamanResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<PeminjamanEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PeminjamanResponseEntityImplCopyWith<_$PeminjamanResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
