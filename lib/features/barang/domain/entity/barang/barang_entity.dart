import 'package:freezed_annotation/freezed_annotation.dart';

part 'barang_entity.freezed.dart';
part 'barang_entity.g.dart';

@freezed
class BarangEntity with _$BarangEntity {
  const factory BarangEntity({
    final String? id,
    final String? kodeBarang,
    final String? nama,
    final String? merek,
    final String? jenis,
    final int? unit,
  }) = _BarangEntity;

  factory BarangEntity.fromJson(Map<String, dynamic> json) =>
      _$BarangEntityFromJson(json);
}
