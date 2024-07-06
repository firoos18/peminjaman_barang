import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/repository/user_repository.dart';

class GetAdminInfoUseCase
    implements UseCase<Either<Failures, UserResponseEntity>, Null> {
  final UserRepository userRepository;

  const GetAdminInfoUseCase(this.userRepository);

  @override
  Future<Either<Failures, UserResponseEntity>> call({Null params}) async {
    return await userRepository.getAdminInfo();
  }
}
