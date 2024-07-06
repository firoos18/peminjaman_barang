part of 'barang_admin_bloc.dart';

class BarangAdminState extends Equatable {
  final List<BarangAdminEntity>? barangAdminEntity;
  final String? message;

  const BarangAdminState({this.barangAdminEntity, this.message});

  @override
  List<Object?> get props => [message, barangAdminEntity];
}

final class BarangAdminInitial extends BarangAdminState {}

final class BarangAdminLoading extends BarangAdminState {}

final class BarangAdminLoaded extends BarangAdminState {
  const BarangAdminLoaded({super.barangAdminEntity});
}

final class BarangAdminFailed extends BarangAdminState {
  const BarangAdminFailed({super.message});
}
