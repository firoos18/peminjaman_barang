// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_admin_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangAdminResponseEntityImpl _$$BarangAdminResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BarangAdminResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BarangAdminEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BarangAdminResponseEntityImplToJson(
        _$BarangAdminResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
