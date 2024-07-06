// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_barang_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddBarangResponseEntityImpl _$$AddBarangResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBarangResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AddBarangEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddBarangResponseEntityImplToJson(
        _$AddBarangResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
