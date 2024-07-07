import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/pinjam_response/pinjam_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/repository/peminjaman_repository.dart';

class PinjamBarangUseCase
    implements UseCase<Either<Failures, PinjamResponseEntity>, PinjamModel?> {
  final PeminjamanRepository peminjamanRepository;

  const PinjamBarangUseCase(this.peminjamanRepository);

  @override
  Future<Either<Failures, PinjamResponseEntity>> call(
      {PinjamModel? params}) async {
    return await peminjamanRepository.pinjamBarang(params!);
  }
}
