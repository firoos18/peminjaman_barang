import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/data/models/pinjam_model.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/usecases/pinjam_barang_usecase.dart';

part 'pinjam_barang_event.dart';
part 'pinjam_barang_state.dart';

class PinjamBarangBloc extends Bloc<PinjamBarangEvent, PinjamBarangState> {
  final PinjamBarangUseCase _pinjamBarangUseCase;

  PinjamBarangBloc(this._pinjamBarangUseCase) : super(PinjamBarangInitial()) {
    on<PinjamBarangEvent>(onPinjamBarangButtonTapped);
  }

  void onPinjamBarangButtonTapped(
      PinjamBarangEvent event, Emitter<PinjamBarangState> emit) async {
    emit(PinjamBarangLoading());

    if (event.pinjamModel != null) {
      final data = await _pinjamBarangUseCase.peminjamanRepository
          .pinjamBarang(event.pinjamModel!);

      data.fold(
        (left) => emit(PinjamBarangFailed(message: left.message)),
        (right) => emit(PinjamBarangSuccess(message: right.message)),
      );
    } else {
      emit(const PinjamBarangFailed(message: 'Pinjam Barang Data is Empty!'));
    }
  }
}
