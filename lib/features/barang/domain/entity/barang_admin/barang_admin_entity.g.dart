// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_admin_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangAdminEntityImpl _$$BarangAdminEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BarangAdminEntityImpl(
      id: json['id'] as String?,
      barang: json['barang'] == null
          ? null
          : BarangEntity.fromJson(json['barang'] as Map<String, dynamic>),
      admin: json['admin'] == null
          ? null
          : UserEntity.fromJson(json['admin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BarangAdminEntityImplToJson(
        _$BarangAdminEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barang': instance.barang,
      'admin': instance.admin,
    };
