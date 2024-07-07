// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinjam_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PinjamResponseEntityImpl _$$PinjamResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PinjamResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PinjamResponseEntityImplToJson(
        _$PinjamResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
