import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin/barang_admin_entity.dart';

part 'barang_admin_response_entity.freezed.dart';
part 'barang_admin_response_entity.g.dart';

@freezed
class BarangAdminResponseEntity with _$BarangAdminResponseEntity {
  const factory BarangAdminResponseEntity({
    final int? status,
    final String? message,
    final List<BarangAdminEntity>? data,
  }) = _BarangAdminResponseEntity;

  factory BarangAdminResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BarangAdminResponseEntityFromJson(json);
}
