// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peminjaman_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeminjamanEntityImpl _$$PeminjamanEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PeminjamanEntityImpl(
      id: json['id'] as String?,
      peminjam: json['peminjam'] == null
          ? null
          : UserEntity.fromJson(json['peminjam'] as Map<String, dynamic>),
      barang: json['barang'] == null
          ? null
          : BarangEntity.fromJson(json['barang'] as Map<String, dynamic>),
      jumlah: (json['jumlah'] as num?)?.toInt(),
      tanggalPinjam: json['tanggalPinjam'] == null
          ? null
          : DateTime.parse(json['tanggalPinjam'] as String),
      tanggalKembali: json['tanggalKembali'] == null
          ? null
          : DateTime.parse(json['tanggalKembali'] as String),
    );

Map<String, dynamic> _$$PeminjamanEntityImplToJson(
        _$PeminjamanEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'peminjam': instance.peminjam,
      'barang': instance.barang,
      'jumlah': instance.jumlah,
      'tanggalPinjam': instance.tanggalPinjam?.toIso8601String(),
      'tanggalKembali': instance.tanggalKembali?.toIso8601String(),
    };
