import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_by_id_response/barang_by_id_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class UpdateBarangUseCase
    implements UseCase<Either<Failures, BarangByIdResponseEntity>, String> {
  final BarangRepository barangRepository;

  const UpdateBarangUseCase(this.barangRepository);

  @override
  Future<Either<Failures, BarangByIdResponseEntity>> call(
      {String? params, AddBarangModel? addBarangModel}) async {
    return await barangRepository.updateBarang(params!, addBarangModel!);
  }
}
