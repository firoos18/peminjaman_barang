import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/auth/data/models/register_model.dart';
import 'package:peminjaman_barang/features/auth/domain/entities/register_response/register_response_entity.dart';
import 'package:peminjaman_barang/features/auth/domain/usecases/user_register_usecase.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  final UserRegisterUseCase _userRegisterUseCase;

  UserRegisterBloc(this._userRegisterUseCase) : super(UserRegisterInitial()) {
    on<UserRegisterEvent>(onUserRegisterButtonTapped);
  }

  void onUserRegisterButtonTapped(
      UserRegisterEvent event, Emitter<UserRegisterState> emit) async {
    emit(UserRegisterLoading());

    if (event.registerModel != null) {
      final data = await _userRegisterUseCase.authRepository
          .userRegister(event.registerModel!);

      data.fold(
        (left) => emit(UserRegisterFailed(message: left.message)),
        (right) => emit(UserRegisterSuccess(registerResponseEntity: right)),
      );
    } else {
      emit(const UserRegisterFailed(message: 'Register Data is Empty!'));
    }
  }
}
