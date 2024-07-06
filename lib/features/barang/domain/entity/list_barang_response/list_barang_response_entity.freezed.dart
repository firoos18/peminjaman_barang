// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_barang_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListBarangResponseEntity _$ListBarangResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ListBarangResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ListBarangResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BarangEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListBarangResponseEntityCopyWith<ListBarangResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBarangResponseEntityCopyWith<$Res> {
  factory $ListBarangResponseEntityCopyWith(ListBarangResponseEntity value,
          $Res Function(ListBarangResponseEntity) then) =
      _$ListBarangResponseEntityCopyWithImpl<$Res, ListBarangResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<BarangEntity>? data});
}

/// @nodoc
class _$ListBarangResponseEntityCopyWithImpl<$Res,
        $Val extends ListBarangResponseEntity>
    implements $ListBarangResponseEntityCopyWith<$Res> {
  _$ListBarangResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<BarangEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListBarangResponseEntityImplCopyWith<$Res>
    implements $ListBarangResponseEntityCopyWith<$Res> {
  factory _$$ListBarangResponseEntityImplCopyWith(
          _$ListBarangResponseEntityImpl value,
          $Res Function(_$ListBarangResponseEntityImpl) then) =
      __$$ListBarangResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<BarangEntity>? data});
}

/// @nodoc
class __$$ListBarangResponseEntityImplCopyWithImpl<$Res>
    extends _$ListBarangResponseEntityCopyWithImpl<$Res,
        _$ListBarangResponseEntityImpl>
    implements _$$ListBarangResponseEntityImplCopyWith<$Res> {
  __$$ListBarangResponseEntityImplCopyWithImpl(
      _$ListBarangResponseEntityImpl _value,
      $Res Function(_$ListBarangResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ListBarangResponseEntityImpl(
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
              as List<BarangEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListBarangResponseEntityImpl implements _ListBarangResponseEntity {
  const _$ListBarangResponseEntityImpl(
      {this.status, this.message, final List<BarangEntity>? data})
      : _data = data;

  factory _$ListBarangResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListBarangResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<BarangEntity>? _data;
  @override
  List<BarangEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListBarangResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBarangResponseEntityImpl &&
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
  _$$ListBarangResponseEntityImplCopyWith<_$ListBarangResponseEntityImpl>
      get copyWith => __$$ListBarangResponseEntityImplCopyWithImpl<
          _$ListBarangResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListBarangResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ListBarangResponseEntity implements ListBarangResponseEntity {
  const factory _ListBarangResponseEntity(
      {final int? status,
      final String? message,
      final List<BarangEntity>? data}) = _$ListBarangResponseEntityImpl;

  factory _ListBarangResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ListBarangResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<BarangEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ListBarangResponseEntityImplCopyWith<_$ListBarangResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
