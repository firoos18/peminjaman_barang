// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peminjaman_transaksi_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeminjamanTransaksiEntityImpl _$$PeminjamanTransaksiEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PeminjamanTransaksiEntityImpl(
      id: json['id'] as String?,
      peminjam: json['peminjam'] == null
          ? null
          : UserEntity.fromJson(json['peminjam'] as Map<String, dynamic>),
      barang: json['barang'] as String?,
      jumlah: (json['jumlah'] as num?)?.toInt(),
      tanggalPinjam: json['tanggalPinjam'] == null
          ? null
          : DateTime.parse(json['tanggalPinjam'] as String),
      tanggalKembali: json['tanggalKembali'] == null
          ? null
          : DateTime.parse(json['tanggalKembali'] as String),
    );

Map<String, dynamic> _$$PeminjamanTransaksiEntityImplToJson(
        _$PeminjamanTransaksiEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'peminjam': instance.peminjam,
      'barang': instance.barang,
      'jumlah': instance.jumlah,
      'tanggalPinjam': instance.tanggalPinjam?.toIso8601String(),
      'tanggalKembali': instance.tanggalKembali?.toIso8601String(),
    };
