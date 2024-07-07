import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjam_model.g.dart';

@JsonSerializable()
class PinjamModel {
  final String? nama;
  final String? email;
  final String? kodeBarang;
  final String? namaBarang;
  final int? jumlah;
  final DateTime? tanggalPinjam;
  final DateTime? tanggalKembali;

  const PinjamModel({
    this.email,
    this.jumlah,
    this.kodeBarang,
    this.nama,
    this.namaBarang,
    this.tanggalKembali,
    this.tanggalPinjam,
  });

  Map<String, dynamic> toJson() => _$PinjamModelToJson(this);
}
