import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/entities/peminjaman/peminjaman_entity.dart';
import 'package:peminjaman_barang/features/peminjaman/domain/usecases/get_all_peminjaman_usecase.dart';

part 'get_all_peminjaman_event.dart';
part 'get_all_peminjaman_state.dart';

class GetAllPeminjamanBloc
    extends Bloc<GetAllPeminjamanEvent, GetAllPeminjamanState> {
  final GetAllPeminjamanUseCase _getAllPeminjamanUseCase;

  GetAllPeminjamanBloc(this._getAllPeminjamanUseCase)
      : super(GetAllPeminjamanInitial()) {
    on<GetAllPeminjamanEvent>(onGetAllPeminjaman);
  }

  void onGetAllPeminjaman(
      GetAllPeminjamanEvent event, Emitter<GetAllPeminjamanState> emit) async {
    emit(GetAllPeminjamanLoading());

    final data =
        await _getAllPeminjamanUseCase.peminjamanRepository.getAllPeminjaman();

    print(data.isRight);

    data.fold(
      (left) => emit(GetAllPeminjamanFailed(message: left.message)),
      (right) => emit(GetAllPeminjamanLoaded(listPeminjamanEntity: right.data)),
    );
  }
}
