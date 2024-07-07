import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user/user_entity.dart';

part 'peminjaman_entity.freezed.dart';
part 'peminjaman_entity.g.dart';

@freezed
class PeminjamanEntity with _$PeminjamanEntity {
  const factory PeminjamanEntity({
    final String? id,
    final UserEntity? peminjam,
    final BarangEntity? barang,
    final int? jumlah,
    final DateTime? tanggalPinjam,
    final DateTime? tanggalKembali,
  }) = _PeminjamanEntity;

  factory PeminjamanEntity.fromJson(Map<String, dynamic> json) =>
      _$PeminjamanEntityFromJson(json);
}
