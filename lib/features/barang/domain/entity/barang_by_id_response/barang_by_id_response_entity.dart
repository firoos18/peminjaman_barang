import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';

part 'barang_by_id_response_entity.freezed.dart';
part 'barang_by_id_response_entity.g.dart';

@freezed
class BarangByIdResponseEntity with _$BarangByIdResponseEntity {
  const factory BarangByIdResponseEntity({
    final int? status,
    final String? message,
    final BarangEntity? data,
  }) = _BarangByIdResponseEntity;

  factory BarangByIdResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BarangByIdResponseEntityFromJson(json);
}
