import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/repository/auth_repository.dart';

class AdminRegisterUseCase
    implements
        UseCase<Either<Failures, RegisterResponseEntity>, RegisterModel> {
  final AuthRepository authRepository;

  const AdminRegisterUseCase(this.authRepository);

  @override
  Future<Either<Failures, RegisterResponseEntity>> call(
      {RegisterModel? params}) async {
    return await authRepository.adminRegister(params!);
  }
}
