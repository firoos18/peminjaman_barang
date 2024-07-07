import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman_response/peminjaman_response_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/pinjam_response/pinjam_response_entity.dart';

abstract class PeminjamanRepository {
  Future<Either<Failures, PeminjamanResponseEntity>> getAllPeminjaman();

  Future<Either<Failures, PinjamResponseEntity>> pinjamBarang(
      PinjamModel pinjamModel);
}
