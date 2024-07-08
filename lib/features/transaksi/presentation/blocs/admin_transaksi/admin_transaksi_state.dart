part of 'admin_transaksi_bloc.dart';

class AdminTransaksiState extends Equatable {
  final List<TransaksiEntity>? transaksiEntity;
  final String? message;

  const AdminTransaksiState({this.message, this.transaksiEntity});

  @override
  List<Object?> get props => [transaksiEntity, message];
}

final class AdminTransaksiInitial extends AdminTransaksiState {}

final class AdminTransaksiLoading extends AdminTransaksiState {}

final class AdminTransaksiLoaded extends AdminTransaksiState {
  const AdminTransaksiLoaded({super.transaksiEntity});
}

final class AdminTransaksiFailed extends AdminTransaksiState {
  const AdminTransaksiFailed({super.message});
}
