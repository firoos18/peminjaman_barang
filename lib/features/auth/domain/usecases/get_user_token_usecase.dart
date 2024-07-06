import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class GetUserTokenUseCase implements UseCase<Either<Failures, String>, Null> {
  final AuthRepository authRepository;

  const GetUserTokenUseCase(this.authRepository);

  @override
  Future<Either<Failures, String>> call({Null params}) async {
    return authRepository.getUserToken();
  }
}
