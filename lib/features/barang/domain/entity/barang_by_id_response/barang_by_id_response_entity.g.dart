// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_by_id_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangByIdResponseEntityImpl _$$BarangByIdResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BarangByIdResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BarangEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BarangByIdResponseEntityImplToJson(
        _$BarangByIdResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
