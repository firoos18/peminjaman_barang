import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class UserLoginUseCase
    implements UseCase<Either<Failures, LoginResponseEntity>, LoginModel?> {
  final AuthRepository authRepository;

  const UserLoginUseCase(this.authRepository);

  @override
  Future<Either<Failures, LoginResponseEntity>> call(
      {LoginModel? params}) async {
    return await authRepository.userLogin(params!);
  }
}
