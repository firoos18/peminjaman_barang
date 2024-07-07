// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinjam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinjamModel _$PinjamModelFromJson(Map<String, dynamic> json) => PinjamModel(
      email: json['email'] as String?,
      jumlah: (json['jumlah'] as num?)?.toInt(),
      kodeBarang: json['kodeBarang'] as String?,
      nama: json['nama'] as String?,
      namaBarang: json['namaBarang'] as String?,
      tanggalKembali: json['tanggalKembali'] == null
          ? null
          : DateTime.parse(json['tanggalKembali'] as String),
      tanggalPinjam: json['tanggalPinjam'] == null
          ? null
          : DateTime.parse(json['tanggalPinjam'] as String),
    );

Map<String, dynamic> _$PinjamModelToJson(PinjamModel instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'email': instance.email,
      'kodeBarang': instance.kodeBarang,
      'namaBarang': instance.namaBarang,
      'jumlah': instance.jumlah,
      'tanggalPinjam': instance.tanggalPinjam?.toIso8601String(),
      'tanggalKembali': instance.tanggalKembali?.toIso8601String(),
    };
