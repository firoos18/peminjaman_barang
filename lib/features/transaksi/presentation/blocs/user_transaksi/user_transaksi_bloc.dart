import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/transaksi/domain/entities/transaksi/transaksi_entity.dart';
import 'package:peminjaman_barang/features/transaksi/domain/usecases/get_all_user_transaksi_usecase.dart';

part 'user_transaksi_event.dart';
part 'user_transaksi_state.dart';

class UserTransaksiBloc extends Bloc<UserTransaksiEvent, UserTransaksiState> {
  final GetAllUserTransaksiUseCase _getAllUserTransaksiUseCase;

  UserTransaksiBloc(this._getAllUserTransaksiUseCase)
      : super(UserTransaksiInitial()) {
    on<UserTransaksiEvent>(onGetUserTransaksi);
  }

  void onGetUserTransaksi(
      UserTransaksiEvent event, Emitter<UserTransaksiState> emit) async {
    emit(UserTransaksiLoading());

    final data = await _getAllUserTransaksiUseCase.transaksiRepository
        .getAllUserTransaksi();

    data.fold(
      (left) => emit(UserTransaksiFailed(message: left.message)),
      (right) => emit(UserTransaksiLoaded(transaksiEntity: right.data)),
    );
  }
}
