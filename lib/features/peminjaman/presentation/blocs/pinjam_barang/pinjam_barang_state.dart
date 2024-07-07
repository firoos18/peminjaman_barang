part of 'pinjam_barang_bloc.dart';

class PinjamBarangState extends Equatable {
  final String? message;

  const PinjamBarangState({this.message});

  @override
  List<Object?> get props => [message];
}

final class PinjamBarangInitial extends PinjamBarangState {}

final class PinjamBarangLoading extends PinjamBarangState {}

final class PinjamBarangSuccess extends PinjamBarangState {
  const PinjamBarangSuccess({super.message});
}

final class PinjamBarangFailed extends PinjamBarangState {
  const PinjamBarangFailed({super.message});
}
