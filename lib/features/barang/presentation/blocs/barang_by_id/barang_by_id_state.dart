part of 'barang_by_id_bloc.dart';

class BarangByIdState extends Equatable {
  final BarangEntity? barangEntity;
  final String? message;

  const BarangByIdState({this.barangEntity, this.message});

  @override
  List<Object?> get props => [message, barangEntity];
}

final class BarangByIdInitial extends BarangByIdState {}

final class BarangByIdLoading extends BarangByIdState {}

final class BarangByIdLoaded extends BarangByIdState {
  const BarangByIdLoaded({super.barangEntity});
}

final class BarangByIdFailed extends BarangByIdState {
  const BarangByIdFailed({super.message});
}
