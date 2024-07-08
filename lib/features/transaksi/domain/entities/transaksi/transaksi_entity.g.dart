// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaksi_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransaksiEntityImpl _$$TransaksiEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransaksiEntityImpl(
      id: json['id'] as String?,
      tanggalPinjam: json['tanggalPinjam'] == null
          ? null
          : DateTime.parse(json['tanggalPinjam'] as String),
      peminjaman: json['peminjaman'] == null
          ? null
          : PeminjamanTransaksiEntity.fromJson(
              json['peminjaman'] as Map<String, dynamic>),
      barang: json['barang'] == null
          ? null
          : BarangEntity.fromJson(json['barang'] as Map<String, dynamic>),
      unit: (json['unit'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$TransaksiEntityImplToJson(
        _$TransaksiEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tanggalPinjam': instance.tanggalPinjam?.toIso8601String(),
      'peminjaman': instance.peminjaman,
      'barang': instance.barang,
      'unit': instance.unit,
      'status': instance.status,
    };
