// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_barang_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteBarangResponseEntityImpl _$$DeleteBarangResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteBarangResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteBarangResponseEntityImplToJson(
        _$DeleteBarangResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
