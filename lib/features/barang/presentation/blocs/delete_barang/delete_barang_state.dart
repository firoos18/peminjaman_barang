part of 'delete_barang_bloc.dart';

class DeleteBarangState extends Equatable {
  final DeleteBarangResponseEntity? deleteBarangResponseEntity;
  final String? message;

  const DeleteBarangState({this.deleteBarangResponseEntity, this.message});

  @override
  List<Object?> get props => [message, deleteBarangResponseEntity];
}

final class DeleteBarangInitial extends DeleteBarangState {}

final class DeleteBarangLoading extends DeleteBarangState {}

final class DeleteBarangSuccess extends DeleteBarangState {
  const DeleteBarangSuccess({super.deleteBarangResponseEntity});
}

final class DeleteBarangFailed extends DeleteBarangState {
  const DeleteBarangFailed({super.message});
}
