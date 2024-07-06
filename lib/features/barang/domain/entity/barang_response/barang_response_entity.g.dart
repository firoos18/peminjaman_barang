// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangResponseEntityImpl _$$BarangResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BarangResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BarangEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BarangResponseEntityImplToJson(
        _$BarangResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
