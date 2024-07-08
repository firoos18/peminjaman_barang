part of 'user_transaksi_bloc.dart';

class UserTransaksiState extends Equatable {
  final List<TransaksiEntity>? transaksiEntity;
  final String? message;

  const UserTransaksiState({this.message, this.transaksiEntity});

  @override
  List<Object?> get props => [transaksiEntity, message];
}

final class UserTransaksiInitial extends UserTransaksiState {}

final class UserTransaksiLoading extends UserTransaksiState {}

final class UserTransaksiLoaded extends UserTransaksiState {
  const UserTransaksiLoaded({super.transaksiEntity});
}

final class UserTransaksiFailed extends UserTransaksiState {
  const UserTransaksiFailed({super.message});
}
