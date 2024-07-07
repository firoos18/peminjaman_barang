import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman/peminjaman_entity.dart';

part 'peminjaman_response_entity.freezed.dart';
part 'peminjaman_response_entity.g.dart';

@freezed
class PeminjamanResponseEntity with _$PeminjamanResponseEntity {
  const factory PeminjamanResponseEntity({
    final int? status,
    final String? message,
    final List<PeminjamanEntity>? data,
  }) = _PeminjamanResponseEntity;

  factory PeminjamanResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PeminjamanResponseEntityFromJson(json);
}
