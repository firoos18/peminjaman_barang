import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi/transaksi_entity.dart';
import 'package:peminjaman_barang/features/transaksi/domain/usecases/get_all_admin_transaksi_usecase.dart';

part 'admin_transaksi_event.dart';
part 'admin_transaksi_state.dart';

class AdminTransaksiBloc
    extends Bloc<AdminTransaksiEvent, AdminTransaksiState> {
  final GetAllAdminTransaksiUseCase _getAllAdminTransaksiUseCase;

  AdminTransaksiBloc(this._getAllAdminTransaksiUseCase)
      : super(AdminTransaksiInitial()) {
    on<AdminTransaksiEvent>(onGetAllAdminTransaksi);
  }

  void onGetAllAdminTransaksi(
      AdminTransaksiEvent event, Emitter<AdminTransaksiState> emit) async {
    emit(AdminTransaksiLoading());

    final data = await _getAllAdminTransaksiUseCase.transaksiRepository
        .getAllAdminTransaksi();

    data.fold(
      (left) => emit(AdminTransaksiFailed(message: left.message)),
      (right) => emit(AdminTransaksiLoaded(transaksiEntity: right.data)),
    );
  }
}
