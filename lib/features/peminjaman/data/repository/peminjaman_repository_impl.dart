import 'dart:io';

import 'package:either_dart/src/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/peminjaman/data/data_sources/peminjaman_api_service.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman_response/peminjaman_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/pinjam_response/pinjam_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/repository/peminjaman_repository.dart';

class PeminjamanRepositoryImpl implements PeminjamanRepository {
  final PeminjamanApiService _peminjamanApiService;

  const PeminjamanRepositoryImpl(this._peminjamanApiService);

  @override
  Future<Either<Failures, PeminjamanResponseEntity>> getAllPeminjaman() async {
    try {
      final result = await _peminjamanApiService.getAllPeminjaman();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, PinjamResponseEntity>> pinjamBarang(
      PinjamModel pinjamModel) async {
    try {
      final result = await _peminjamanApiService.pinjamBarang(pinjamModel);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
