import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi_response_entity.dart/transaksi_response_entity.dart';

abstract class TransaksiRepository {
  Future<Either<Failures, TransaksiResponseEntity>> getAllAdminTransaksi();
  Future<Either<Failures, TransaksiResponseEntity>> getAllUserTransaksi();
}
