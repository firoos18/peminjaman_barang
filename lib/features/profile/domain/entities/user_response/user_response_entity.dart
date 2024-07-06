import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user/user_entity.dart';

part 'user_response_entity.freezed.dart';
part 'user_response_entity.g.dart';

@freezed
class UserResponseEntity with _$UserResponseEntity {
  const factory UserResponseEntity({
    final int? status,
    final String? message,
    final UserEntity? data,
  }) = _UserResponseEntity;

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserResponseEntityFromJson(json);
}
