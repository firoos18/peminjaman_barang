import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_barang_model.g.dart';

@JsonSerializable()
class AddBarangModel {
  String? idAdmin;
  final String? kodeBarang;
  final String? nama;
  final String? merek;
  final String? jenis;
  final int? unit;

  AddBarangModel({
    this.idAdmin,
    this.jenis,
    this.kodeBarang,
    this.merek,
    this.nama,
    this.unit,
  });

  Map<String, dynamic> toJson() => _$AddBarangModelToJson(this);
}
