import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman_response/peminjaman_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/repository/peminjaman_repository.dart';

class GetAllPeminjamanUseCase
    implements UseCase<Either<Failures, PeminjamanResponseEntity>, Null> {
  final PeminjamanRepository peminjamanRepository;

  const GetAllPeminjamanUseCase(this.peminjamanRepository);

  @override
  Future<Either<Failures, PeminjamanResponseEntity>> call({Null params}) async {
    return await peminjamanRepository.getAllPeminjaman();
  }
}
