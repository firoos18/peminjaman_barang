import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/barang/data/data_sources/barang_api_service.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/repository/barang_repository.dart';

class BarangRepositoryImpl implements BarangRepository {
  final BarangApiService _barangApiService;

  const BarangRepositoryImpl(this._barangApiService);

  @override
  Future<Either<Failures, BarangAdminResponseEntity>> getBarangAdmin() async {
    try {
      final result = await _barangApiService.getListBarang();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
