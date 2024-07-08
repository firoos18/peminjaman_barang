import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user/user_entity.dart';

part 'peminjaman_transaksi_entity.freezed.dart';
part 'peminjaman_transaksi_entity.g.dart';

@freezed
class PeminjamanTransaksiEntity with _$PeminjamanTransaksiEntity {
  const factory PeminjamanTransaksiEntity({
    final String? id,
    final UserEntity? peminjam,
    final String? barang,
    final int? jumlah,
    final DateTime? tanggalPinjam,
    final DateTime? tanggalKembali,
  }) = _PeminjamanTransaksiEntity;

  factory PeminjamanTransaksiEntity.fromJson(Map<String, dynamic> json) =>
      _$PeminjamanTransaksiEntityFromJson(json);
}
