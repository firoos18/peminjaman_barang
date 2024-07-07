import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/delete_barang_response/delete_barang_response_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/delete_barang_usecase.dart';

part 'delete_barang_event.dart';
part 'delete_barang_state.dart';

class DeleteBarangBloc extends Bloc<DeleteBarangEvent, DeleteBarangState> {
  final DeleteBarangUseCase _deleteBarangUseCase;

  DeleteBarangBloc(this._deleteBarangUseCase) : super(DeleteBarangInitial()) {
    on<DeleteBarangEvent>(onDeleteBarangButtonTapped);
  }

  void onDeleteBarangButtonTapped(
      DeleteBarangEvent event, Emitter<DeleteBarangState> emit) async {
    emit(DeleteBarangLoading());

    if (event.id != null) {
      final data =
          await _deleteBarangUseCase.barangRepository.deleteBarang(event.id!);

      data.fold(
        (left) => emit(DeleteBarangFailed(message: left.message)),
        (right) => emit(DeleteBarangSuccess(deleteBarangResponseEntity: right)),
      );
    } else {
      emit(const DeleteBarangFailed(message: 'Id is Empty!'));
    }
  }
}
