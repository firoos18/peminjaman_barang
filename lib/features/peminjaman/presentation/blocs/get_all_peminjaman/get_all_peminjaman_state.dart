part of 'get_all_peminjaman_bloc.dart';

class GetAllPeminjamanState extends Equatable {
  final List<PeminjamanEntity>? listPeminjamanEntity;
  final String? message;

  const GetAllPeminjamanState({this.message, this.listPeminjamanEntity});

  @override
  List<Object?> get props => [message, listPeminjamanEntity];
}

final class GetAllPeminjamanInitial extends GetAllPeminjamanState {}

final class GetAllPeminjamanLoading extends GetAllPeminjamanState {}

final class GetAllPeminjamanLoaded extends GetAllPeminjamanState {
  const GetAllPeminjamanLoaded({super.listPeminjamanEntity});
}

final class GetAllPeminjamanFailed extends GetAllPeminjamanState {
  const GetAllPeminjamanFailed({super.message});
}
