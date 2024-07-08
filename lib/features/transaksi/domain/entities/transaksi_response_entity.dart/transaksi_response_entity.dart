import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi/transaksi_entity.dart';

part 'transaksi_response_entity.freezed.dart';
part 'transaksi_response_entity.g.dart';

@freezed
class TransaksiResponseEntity with _$TransaksiResponseEntity {
  const factory TransaksiResponseEntity({
    final int? status,
    final String? message,
    final List<TransaksiEntity>? data,
  }) = _TransaksiResponseEntity;

  factory TransaksiResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$TransaksiResponseEntityFromJson(json);
}
