// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_barang_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddBarangEntityImpl _$$AddBarangEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBarangEntityImpl(
      id: json['id'] as String?,
      kodeBarang: json['kodeBarang'] as String?,
      nama: json['nama'] as String?,
      merek: json['merek'] as String?,
      jenis: json['jenis'] as String?,
      unit: (json['unit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddBarangEntityImplToJson(
        _$AddBarangEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kodeBarang': instance.kodeBarang,
      'nama': instance.nama,
      'merek': instance.merek,
      'jenis': instance.jenis,
      'unit': instance.unit,
    };
