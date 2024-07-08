import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/peminjaman_transaksi/peminjaman_transaksi_entity.dart';

part 'transaksi_entity.freezed.dart';
part 'transaksi_entity.g.dart';

@freezed
class TransaksiEntity with _$TransaksiEntity {
  const factory TransaksiEntity({
    final String? id,
    final DateTime? tanggalPinjam,
    final PeminjamanTransaksiEntity? peminjaman,
    final BarangEntity? barang,
    final int? unit,
    final String? status,
  }) = _TransaksiEntity;

  factory TransaksiEntity.fromJson(Map<String, dynamic> json) =>
      _$TransaksiEntityFromJson(json);
}
