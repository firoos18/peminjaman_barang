import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin/barang_admin_entity.dart';
import 'package:peminjaman_barang/features/barang/domain/usecases/get_barang_admin_usecase.dart';

part 'barang_admin_event.dart';
part 'barang_admin_state.dart';

class BarangAdminBloc extends Bloc<BarangAdminEvent, BarangAdminState> {
  final GetBarangAdminUseCase _getBarangAdminUseCase;

  BarangAdminBloc(this._getBarangAdminUseCase) : super(BarangAdminInitial()) {
    on<BarangAdminEvent>(onGetBarangAdmin);
  }

  void onGetBarangAdmin(
      BarangAdminEvent event, Emitter<BarangAdminState> emit) async {
    emit(BarangAdminLoading());

    final data = await _getBarangAdminUseCase.barangRepository.getBarangAdmin();

    data.fold(
      (left) => emit(BarangAdminFailed(message: left.message)),
      (right) => emit(BarangAdminLoaded(barangAdminEntity: right.data)),
    );
  }
}
