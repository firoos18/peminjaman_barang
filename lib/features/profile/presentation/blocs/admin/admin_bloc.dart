import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/profile/domain/entities/user_response/user_response_entity.dart';
import 'package:peminjaman_barang/features/profile/domain/usecases/get_admin_info_usecase.dart';

part 'admin_event.dart';
part 'admin_state.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final GetAdminInfoUseCase _adminInfoUseCase;

  AdminBloc(this._adminInfoUseCase) : super(AdminInitial()) {
    on<AdminEvent>(onGetAdminInfo);
  }

  void onGetAdminInfo(AdminEvent event, Emitter<AdminState> emit) async {
    emit(AdminLoading());

    final data = await _adminInfoUseCase.userRepository.getAdminInfo();

    data.fold(
      (left) => emit(AdminFailed(message: left.message)),
      (right) => emit(AdminLoaded(userResponseEntity: right)),
    );
  }
}
