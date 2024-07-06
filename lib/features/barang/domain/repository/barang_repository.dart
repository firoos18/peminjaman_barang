import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';

abstract class BarangRepository {
  Future<Either<Failures, BarangAdminResponseEntity>> getBarangAdmin();
}
