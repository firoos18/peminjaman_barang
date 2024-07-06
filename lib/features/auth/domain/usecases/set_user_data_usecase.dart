import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class SetUserDataUseCase implements UseCase<Either<Failures, void>, String> {
  final AuthRepository authRepository;

  const SetUserDataUseCase(this.authRepository);

  @override
  Future<Either<Failures, void>> call(
      {String? params, String? userToken, String? email, String? uid}) async {
    return await authRepository.setUserData(
      uid: uid,
      email: email,
      userToken: userToken,
    );
  }
}
