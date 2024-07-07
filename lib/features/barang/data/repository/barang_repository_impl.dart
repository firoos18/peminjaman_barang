import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/exceptions/exceptions.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/barang/data/data_sources/barang_api_service.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang_response/add_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin_response/barang_admin_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_by_id_response/barang_by_id_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/delete_barang_response/delete_barang_response_entity.dart';
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

  @override
  Future<Either<Failures, AddBarangResponseEntity>> addBarangAdmin(
      AddBarangModel addBarangModel) async {
    try {
      final result = await _barangApiService.addBarang(addBarangModel);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, BarangByIdResponseEntity>> getBarangById(
      String id) async {
    try {
      final result = await _barangApiService.getBarangById(id);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, DeleteBarangResponseEntity>> deleteBarang(
      String id) async {
    try {
      final result = await _barangApiService.deleteBarang(id);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }

  @override
  Future<Either<Failures, BarangByIdResponseEntity>> updateBarang(
      String id, AddBarangModel addBarangModel) async {
    try {
      final result = await _barangApiService.updateBarang(id, addBarangModel);

      return Right(result);
    } on RequestErrorException catch (e) {
      return Left(RequestFailures(e.message));
    } on SocketException catch (e) {
      return Left(RequestFailures(e.message));
    }
  }
}
