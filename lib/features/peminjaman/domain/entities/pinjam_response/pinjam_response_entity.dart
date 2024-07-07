import 'package:freezed_annotation/freezed_annotation.dart';

part 'pinjam_response_entity.freezed.dart';
part 'pinjam_response_entity.g.dart';

@freezed
class PinjamResponseEntity with _$PinjamResponseEntity {
  const factory PinjamResponseEntity({
    final int? status,
    final String? message,
  }) = _PinjamResponseEntity;

  factory PinjamResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PinjamResponseEntityFromJson(json);
}
