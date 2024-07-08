import 'package:either_dart/either.dart';
import 'package:peminjaman_barang/core/failures/failures.dart';
import 'package:peminjaman_barang/core/usecases/usecases.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi_response_entity.dart/transaksi_response_entity.dart';
import 'package:peminjaman_barang/features/transaksi/domain/repository/transaksi_repository.dart';

class GetAllAdminTransaksiUseCase
    implements UseCase<Either<Failures, TransaksiResponseEntity>, Null> {
  final TransaksiRepository transaksiRepository;

  const GetAllAdminTransaksiUseCase(this.transaksiRepository);

  @override
  Future<Either<Failures, TransaksiResponseEntity>> call({Null params}) async {
    return await transaksiRepository.getAllAdminTransaksi();
  }
}
