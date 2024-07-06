import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';

abstract class AuthRepository {
  Future<Either<Failures, LoginResponseEntity>> userLogin(
      LoginModel loginModel);

  Future<Either<Failures, LoginResponseEntity>> adminLogin(
      LoginModel loginModel);

  Future<Either<Failures, RegisterResponseEntity>> adminRegister(
      RegisterModel registerModel);

  Future<Either<Failures, RegisterResponseEntity>> userRegister(
      RegisterModel registerModel);

  Future<Either<Failures, bool>> userLogOut();

  Future<Either<Failures, String>> setUserData({
    String? userToken,
    String? email,
    String? uid,
  });

  Either<Failures, String> getUserToken();

  Either<Failures, String> getUid();
}
