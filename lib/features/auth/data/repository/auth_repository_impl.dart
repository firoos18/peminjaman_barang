import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:peminjaman_barang/features/auth/data/data_source/remote/auth_api_service.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;
  final AuthLocalDataSource _authLocalDataSource;

  const AuthRepositoryImpl(this._authApiService, this._authLocalDataSource);

  @override
  Future<Either<Failures, LoginResponseEntity>> adminLogin(
      LoginModel loginModel) async {
    try {
      final result = await _authApiService.adminLogin(loginModel);

      setUserData(
        userToken: result.data!.token,
        uid: result.data!.uid,
        email: result.data!.email,
      );

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, RegisterResponseEntity>> adminRegister(
      RegisterModel registerModel) async {
    try {
      final result = await _authApiService.adminRegister(registerModel);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, LoginResponseEntity>> userLogin(
      LoginModel loginModel) async {
    try {
      final result = await _authApiService.userLogin(loginModel);

      setUserData(
        userToken: result.data!.token,
        uid: result.data!.uid,
        email: result.data!.email,
      );

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, RegisterResponseEntity>> userRegister(
      RegisterModel registerModel) async {
    try {
      final result = await _authApiService.userRegister(registerModel);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Either<Failures, String> getUid() {
    final uid = _authLocalDataSource.getUid();

    if (uid != null) {
      return Right(uid);
    } else {
      return Left(RequestFailures("No UID Found"));
    }
  }

  @override
  Either<Failures, String> getUserToken() {
    final token = _authLocalDataSource.getUserToken();

    if (token != null) {
      return Right(token);
    } else {
      return Left(RequestFailures("No User Token Found"));
    }
  }

  @override
  Future<Either<Failures, String>> setUserData(
      {String? userToken, String? email, String? uid}) async {
    try {
      if (userToken != null && email != null && uid != null) {
        await _authLocalDataSource.setUserData(
          userToken: userToken,
          email: email,
          uid: uid,
        );

        return const Right("success");
      } else {
        return Left(RequestFailures("User Token is Empty"));
      }
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } catch (e) {
      return Left(RequestFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, bool>> userLogOut() async {
    try {
      final isLogOut = await _authLocalDataSource.userLogout();

      return Right(isLogOut!);
    } on RequestErrorException catch (e) {
      throw Left(RequestFailures(e.message));
    }
  }
}
