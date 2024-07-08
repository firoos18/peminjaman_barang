import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/transaksi/data/data_source/transaksi_api_service.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi_response_entity.dart/transaksi_response_entity.dart';
import 'package:peminjaman_barang/features/transaksi/domain/repository/transaksi_repository.dart';

class TransaksiRepositoryImpl implements TransaksiRepository {
  final TransaksiApiService _transaksiApiService;

  const TransaksiRepositoryImpl(this._transaksiApiService);

  @override
  Future<Either<Failures, TransaksiResponseEntity>>
      getAllAdminTransaksi() async {
    try {
      final result = await _transaksiApiService.getAllAdminTransaksi();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, TransaksiResponseEntity>>
      getAllUserTransaksi() async {
    try {
      final result = await _transaksiApiService.getAllUserTransaksi();

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
