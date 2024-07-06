import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user/user_entity.dart';

part 'barang_admin_entity.freezed.dart';
part 'barang_admin_entity.g.dart';

@freezed
class BarangAdminEntity with _$BarangAdminEntity {
  const factory BarangAdminEntity({
    final String? id,
    final BarangEntity? barang,
    final UserEntity? admin,
  }) = _BarangAdminEntity;

  factory BarangAdminEntity.fromJson(Map<String, dynamic> json) =>
      _$BarangAdminEntityFromJson(json);
}
