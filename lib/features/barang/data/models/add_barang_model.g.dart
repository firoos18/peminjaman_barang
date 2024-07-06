// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_barang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBarangModel _$AddBarangModelFromJson(Map<String, dynamic> json) =>
    AddBarangModel(
      idAdmin: json['idAdmin'] as String?,
      jenis: json['jenis'] as String?,
      kodeBarang: json['kodeBarang'] as String?,
      merek: json['merek'] as String?,
      nama: json['nama'] as String?,
      unit: (json['unit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddBarangModelToJson(AddBarangModel instance) =>
    <String, dynamic>{
      'idAdmin': instance.idAdmin,
      'kodeBarang': instance.kodeBarang,
      'nama': instance.nama,
      'merek': instance.merek,
      'jenis': instance.jenis,
      'unit': instance.unit,
    };
