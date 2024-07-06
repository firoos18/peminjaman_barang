import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_barang_entity.freezed.dart';
part 'add_barang_entity.g.dart';

@freezed
class AddBarangEntity with _$AddBarangEntity {
  const factory AddBarangEntity({
    final String? id,
    final String? kodeBarang,
    final String? nama,
    final String? merek,
    final String? jenis,
    final int? unit,
  }) = _AddBarangEntity;

  factory AddBarangEntity.fromJson(Map<String, dynamic> json) =>
      _$AddBarangEntityFromJson(json);
}
