import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';

part 'barang_response_entity.freezed.dart';
part 'barang_response_entity.g.dart';

@freezed
class BarangResponseEntity with _$BarangResponseEntity {
  const factory BarangResponseEntity({
    final int? status,
    final String? message,
    final BarangEntity? data,
  }) = _BarangResponseEntity;

  factory BarangResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BarangResponseEntityFromJson(json);
}
