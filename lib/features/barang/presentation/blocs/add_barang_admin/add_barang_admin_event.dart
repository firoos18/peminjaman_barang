part of 'add_barang_admin_bloc.dart';

class AddBarangAdminEvent extends Equatable {
  final AddBarangModel? addBarangModel;

  const AddBarangAdminEvent({this.addBarangModel});

  @override
  List<Object?> get props => [addBarangModel];
}

final class AddBarangAdminButtonTapped extends AddBarangAdminEvent {
  const AddBarangAdminButtonTapped({super.addBarangModel});
}
