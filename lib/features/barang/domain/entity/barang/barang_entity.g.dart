// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangEntityImpl _$$BarangEntityImplFromJson(Map<String, dynamic> json) =>
    _$BarangEntityImpl(
      kodeBarang: json['kodeBarang'] as String?,
      nama: json['nama'] as String?,
      merek: json['merek'] as String?,
      jenis: json['jenis'] as String?,
      unit: (json['unit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BarangEntityImplToJson(_$BarangEntityImpl instance) =>
    <String, dynamic>{
      'kodeBarang': instance.kodeBarang,
      'nama': instance.nama,
      'merek': instance.merek,
      'jenis': instance.jenis,
      'unit': instance.unit,
    };
