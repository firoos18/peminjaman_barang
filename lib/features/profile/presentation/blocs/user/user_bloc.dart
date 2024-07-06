import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/usecases/get_user_info_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserInfoUseCase _getUserInfoUseCase;

  UserBloc(this._getUserInfoUseCase) : super(UserInitial()) {
    on<UserEvent>(onGetUser);
  }

  void onGetUser(UserEvent event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final data = await _getUserInfoUseCase.userRepository.getUserInfo();

    data.fold(
      (left) => emit(UserFailed(message: left.message)),
      (right) => emit(UserLoaded(userResponseEntity: right)),
    );
  }
}
