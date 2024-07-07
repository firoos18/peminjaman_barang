import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/get_barang_by_id_usecase.dart';

part 'barang_by_id_event.dart';
part 'barang_by_id_state.dart';

class BarangByIdBloc extends Bloc<BarangByIdEvent, BarangByIdState> {
  final GetBarangByIdUseCase _getBarangByIdUseCase;

  BarangByIdBloc(this._getBarangByIdUseCase) : super(BarangByIdInitial()) {
    on<BarangByIdEvent>(onGetBarangById);
  }

  void onGetBarangById(
      BarangByIdEvent event, Emitter<BarangByIdState> emit) async {
    emit(BarangByIdLoading());

    if (event.id != null) {
      final data =
          await _getBarangByIdUseCase.barangRepository.getBarangById(event.id!);

      data.fold(
        (left) => emit(BarangByIdFailed(message: left.message)),
        (right) => emit(BarangByIdLoaded(barangEntity: right.data)),
      );
    } else {
      emit(const BarangByIdFailed(message: 'Barang Id is Empty!'));
    }
  }
}
