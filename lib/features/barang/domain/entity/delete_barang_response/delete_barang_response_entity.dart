import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_barang_response_entity.freezed.dart';
part 'delete_barang_response_entity.g.dart';

@freezed
class DeleteBarangResponseEntity with _$DeleteBarangResponseEntity {
  const factory DeleteBarangResponseEntity({
    final int? status,
    final String? message,
  }) = _DeleteBarangResponseEntity;

  factory DeleteBarangResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$DeleteBarangResponseEntityFromJson(json);
}
