import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class UserLogoutUseCase implements UseCase<Either<Failures, bool?>, Null> {
  final AuthRepository authRepository;

  const UserLogoutUseCase(this.authRepository);

  @override
  Future<Either<Failures, bool?>> call({Null params}) async {
    return authRepository.userLogOut();
  }
}
