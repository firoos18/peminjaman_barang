// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_barang_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListBarangResponseEntityImpl _$$ListBarangResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListBarangResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BarangEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListBarangResponseEntityImplToJson(
        _$ListBarangResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
