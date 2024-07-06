import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/profile/data/data_sources/user_api_service.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiService _userApiService;

  const UserRepositoryImpl(this._userApiService);

  @override
  Future<Either<Failures, UserResponseEntity>> getUserInfo() async {
    try {
      final result = await _userApiService.getUserInfo();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, UserResponseEntity>> getAdminInfo() async {
    try {
      final result = await _userApiService.getAdminInfo();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
