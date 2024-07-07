import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/delete_barang_response/delete_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class DeleteBarangUseCase
    implements UseCase<Either<Failures, DeleteBarangResponseEntity>, String> {
  final BarangRepository barangRepository;

  const DeleteBarangUseCase(this.barangRepository);

  @override
  Future<Either<Failures, DeleteBarangResponseEntity>> call(
      {String? params}) async {
    return await barangRepository.deleteBarang(params!);
  }
}
