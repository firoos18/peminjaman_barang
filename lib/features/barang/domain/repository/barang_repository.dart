import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang_response/add_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_by_id_response/barang_by_id_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/delete_barang_response/delete_barang_response_entity.dart';

abstract class BarangRepository {
  Future<Either<Failures, BarangAdminResponseEntity>> getBarangAdmin();

  Future<Either<Failures, BarangByIdResponseEntity>> getBarangById(String id);

  Future<Either<Failures, AddBarangResponseEntity>> addBarangAdmin(
    AddBarangModel addBarangModel,
  );

  Future<Either<Failures, BarangByIdResponseEntity>> updateBarang(
    String id,
    AddBarangModel addBarangModel,
  );

  Future<Either<Failures, DeleteBarangResponseEntity>> deleteBarang(String id);
}
