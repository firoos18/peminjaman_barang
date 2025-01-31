import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/list_barang_response/list_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class GetBarangAdminUseCase
    implements UseCase<Either<Failures, ListBarangResponseEntity>, Null> {
  final BarangRepository barangRepository;

  const GetBarangAdminUseCase(this.barangRepository);

  @override
  Future<Either<Failures, ListBarangResponseEntity>> call({Null params}) async {
    return await barangRepository.getAllBarang();
  }
}
