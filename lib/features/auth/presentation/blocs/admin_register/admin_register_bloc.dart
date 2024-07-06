import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/admin_register_usecase.dart';

part 'admin_register_event.dart';
part 'admin_register_state.dart';

class AdminRegisterBloc extends Bloc<AdminRegisterEvent, AdminRegisterState> {
  final AdminRegisterUseCase _adminRegisterUseCase;

  AdminRegisterBloc(this._adminRegisterUseCase)
      : super(AdminRegisterInitial()) {
    on<AdminRegisterEvent>(onAdminRegisterButtonTapped);
  }

  void onAdminRegisterButtonTapped(
      AdminRegisterEvent event, Emitter<AdminRegisterState> emit) async {
    emit(AdminRegisterLoading());

    if (event.registerModel != null) {
      final data = await _adminRegisterUseCase.authRepository
          .adminRegister(event.registerModel!);

      data.fold(
        (left) => emit(AdminRegisterFailed(message: left.message)),
        (right) => emit(AdminRegisterSuccess(registerResponseEntity: right)),
      );
    } else {
      emit(const AdminRegisterFailed(message: 'Register Data is empty!'));
    }
  }
}
