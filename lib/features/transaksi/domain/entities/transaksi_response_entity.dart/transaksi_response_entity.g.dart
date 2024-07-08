// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaksi_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransaksiResponseEntityImpl _$$TransaksiResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransaksiResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TransaksiEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransaksiResponseEntityImplToJson(
        _$TransaksiResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
