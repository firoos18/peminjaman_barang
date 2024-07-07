import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang_response/add_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class AddBarangAdminUseCase
    implements
        UseCase<Either<Failures, AddBarangResponseEntity>, AddBarangModel> {
  final BarangRepository barangRepository;

  const AddBarangAdminUseCase(this.barangRepository);

  @override
  Future<Either<Failures, AddBarangResponseEntity>> call(
      {AddBarangModel? params}) async {
    return await barangRepository.addBarangAdmin(params!);
  }
}
