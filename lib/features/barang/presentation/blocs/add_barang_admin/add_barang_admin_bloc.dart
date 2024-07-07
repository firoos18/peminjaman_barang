import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/data/models/add_barang_model.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/add_barang/add_barang_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/add_barang_admin_usecase.dart';

part 'add_barang_admin_event.dart';
part 'add_barang_admin_state.dart';

class AddBarangAdminBloc
    extends Bloc<AddBarangAdminEvent, AddBarangAdminState> {
  final AddBarangAdminUseCase _addBarangAdminUseCase;

  AddBarangAdminBloc(this._addBarangAdminUseCase)
      : super(AddBarangAdminInitial()) {
    on<AddBarangAdminEvent>(onAddBarangAdminButtonTapped);
  }

  void onAddBarangAdminButtonTapped(
      AddBarangAdminEvent event, Emitter<AddBarangAdminState> emit) async {
    emit(AddBarangAdminLoading());

    if (event.addBarangModel != null) {
      final data = await _addBarangAdminUseCase.barangRepository
          .addBarangAdmin(event.addBarangModel!);

      data.fold(
        (left) => emit(AddBarangAdminFailed(message: left.message)),
        (right) => emit(AddBarangAdminSuccess(addBarangEntity: right.data)),
      );
    } else {
      emit(const AddBarangAdminFailed(message: 'Barang Data is Empty!'));
    }
  }
}
