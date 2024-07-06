import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang/add_barang_entity.dart';

part 'add_barang_response_entity.freezed.dart';
part 'add_barang_response_entity.g.dart';

@freezed
class AddBarangResponseEntity with _$AddBarangResponseEntity {
  const factory AddBarangResponseEntity({
    final int? status,
    final String? message,
    final AddBarangEntity? data,
  }) = _AddBarangResponseEntity;

  factory AddBarangResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddBarangResponseEntityFromJson(json);
}
