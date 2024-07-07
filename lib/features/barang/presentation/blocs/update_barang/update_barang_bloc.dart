import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang/barang_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/update_barang_usecase.dart';

part 'update_barang_event.dart';
part 'update_barang_state.dart';

class UpdateBarangBloc extends Bloc<UpdateBarangEvent, UpdateBarangState> {
  final UpdateBarangUseCase _updateBarangUseCase;

  UpdateBarangBloc(this._updateBarangUseCase) : super(UpdateBarangInitial()) {
    on<UpdateBarangEvent>(onUpdateBarangButtonTapped);
  }

  void onUpdateBarangButtonTapped(
      UpdateBarangEvent event, Emitter<UpdateBarangState> emit) async {
    emit(UpdateBarangLoading());

    final data = await _updateBarangUseCase.barangRepository
        .updateBarang(event.id!, event.addBarangModel!);

    data.fold(
      (left) => emit(UpdateBarangFailed(message: left.message)),
      (right) => emit(UpdateBarangSuccess(barangEntity: right.data)),
    );
  }
}
