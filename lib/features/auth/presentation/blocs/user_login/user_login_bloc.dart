import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/auth/data/models/login_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/login_response/login_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/get_user_token_usecase.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/user_login_usecase.dart';

part 'user_login_event.dart';
part 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  final UserLoginUseCase _userLoginUseCase;
  final GetUserTokenUseCase _getUserTokenUseCase;

  UserLoginBloc(this._userLoginUseCase, this._getUserTokenUseCase)
      : super(UserLoginInitial()) {
    on<UserLoginButtonTapped>(onUserLoginButtonTapped);
    on<UserLoginAppOpened>(onAppOpened);
  }

  void onUserLoginButtonTapped(
      UserLoginEvent event, Emitter<UserLoginState> emit) async {
    emit(UserLoginLoading());
    if (event.loginModel != null) {
      final data =
          await _userLoginUseCase.authRepository.userLogin(event.loginModel!);

      data.fold(
        (left) => emit(UserLoginFailed(message: left.message)),
        (right) => emit(UserLoginSuccess(loginResponseEntity: right)),
      );
    } else {
      emit(const UserLoginFailed(message: 'Login Data is Empty!'));
    }
  }

  void onAppOpened(UserLoginEvent event, Emitter<UserLoginState> emit) async {
    emit(UserLoginLoading());

    final data = _getUserTokenUseCase.authRepository.getUserToken();

    data.fold(
      (left) => emit(UserLoginInitial()),
      (right) => emit(const UserLoginSuccess()),
    );
  }
}
