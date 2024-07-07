part of 'add_barang_admin_bloc.dart';

class AddBarangAdminState extends Equatable {
  final AddBarangEntity? addBarangEntity;
  final String? message;

  const AddBarangAdminState({this.addBarangEntity, this.message});

  @override
  List<Object?> get props => [message, addBarangEntity];
}

final class AddBarangAdminInitial extends AddBarangAdminState {}

final class AddBarangAdminLoading extends AddBarangAdminState {}

final class AddBarangAdminSuccess extends AddBarangAdminState {
  const AddBarangAdminSuccess({super.addBarangEntity});
}

final class AddBarangAdminFailed extends AddBarangAdminState {
  const AddBarangAdminFailed({super.message});
}
