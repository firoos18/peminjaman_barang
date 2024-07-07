part of 'update_barang_bloc.dart';

class UpdateBarangEvent extends Equatable {
  final String? id;
  final AddBarangModel? addBarangModel;

  const UpdateBarangEvent({this.addBarangModel, this.id});

  @override
  List<Object?> get props => [id, addBarangModel];
}

final class UpdateBarangButtonTapped extends UpdateBarangEvent {
  const UpdateBarangButtonTapped({super.addBarangModel, super.id});
}
