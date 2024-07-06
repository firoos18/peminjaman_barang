import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/admin_login_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/get_user_token_usecase.dart';

part 'admin_login_event.dart';
part 'admin_login_state.dart';

class AdminLoginBloc extends Bloc<AdminLoginEvent, AdminLoginState> {
  final AdminLoginUseCase _adminLoginUseCase;
  final GetUserTokenUseCase _getUserTokenUseCase;

  AdminLoginBloc(this._adminLoginUseCase, this._getUserTokenUseCase)
      : super(AdminLoginInitial()) {
    on<AdminLoginButtonTapped>(onAdminLoginButtonTapped);
    on<AdminLoginAppOpened>(onAppOpened);
  }

  void onAdminLoginButtonTapped(
      AdminLoginEvent event, Emitter<AdminLoginState> emit) async {
    emit(AdminLoginLoading());

    if (event.loginModel != null) {
      final data =
          await _adminLoginUseCase.authRepository.adminLogin(event.loginModel!);

      data.fold(
        (left) => emit(AdminLoginFailed(message: left.message)),
        (right) => emit(AdminLoginSuccess(loginResponseEntity: right)),
      );
    } else {
      emit(const AdminLoginFailed(message: 'Login Data is Empty!'));
    }
  }

  void onAppOpened(AdminLoginEvent event, Emitter<AdminLoginState> emit) async {
    emit(AdminLoginLoading());

    final data = _getUserTokenUseCase.authRepository.getUserToken();

    data.fold(
      (left) => emit(AdminLoginInitial()),
      (right) => emit(const AdminLoginSuccess()),
    );
  }
}
