import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';

part 'list_barang_response_entity.freezed.dart';
part 'list_barang_response_entity.g.dart';

@freezed
class ListBarangResponseEntity with _$ListBarangResponseEntity {
  const factory ListBarangResponseEntity({
    final int? status,
    final String? message,
    final List<BarangEntity>? data,
  }) = _ListBarangResponseEntity;

  factory ListBarangResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ListBarangResponseEntityFromJson(json);
}
