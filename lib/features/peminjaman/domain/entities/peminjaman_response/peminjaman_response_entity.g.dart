// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peminjaman_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeminjamanResponseEntityImpl _$$PeminjamanResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PeminjamanResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PeminjamanEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PeminjamanResponseEntityImplToJson(
        _$PeminjamanResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
