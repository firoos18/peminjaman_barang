part of 'update_barang_bloc.dart';

class UpdateBarangState extends Equatable {
  final String? message;
  final BarangEntity? barangEntity;

  const UpdateBarangState({this.barangEntity, this.message});

  @override
  List<Object?> get props => [message, barangEntity];
}

final class UpdateBarangInitial extends UpdateBarangState {}

final class UpdateBarangLoading extends UpdateBarangState {}

final class UpdateBarangSuccess extends UpdateBarangState {
  const UpdateBarangSuccess({super.barangEntity});
}

final class UpdateBarangFailed extends UpdateBarangState {
  const UpdateBarangFailed({super.message});
}
