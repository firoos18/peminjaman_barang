import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_by_id_response/barang_by_id_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class GetBarangByIdUseCase
    implements UseCase<Either<Failures, BarangByIdResponseEntity>, String?> {
  final BarangRepository barangRepository;

  const GetBarangByIdUseCase(this.barangRepository);

  @override
  Future<Either<Failures, BarangByIdResponseEntity>> call(
      {String? params}) async {
    return await barangRepository.getBarangById(params!);
  }
}
