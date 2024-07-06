import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';

abstract class UserRepository {
  Future<Either<Failures, UserResponseEntity>> getUserInfo();

  Future<Either<Failures, UserResponseEntity>> getAdminInfo();
}
