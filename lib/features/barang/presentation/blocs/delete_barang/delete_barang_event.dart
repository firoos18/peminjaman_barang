part of 'delete_barang_bloc.dart';

class DeleteBarangEvent extends Equatable {
  final String? id;

  const DeleteBarangEvent({this.id});

  @override
  List<Object?> get props => [id];
}

final class DeleteBarangButtonTapped extends DeleteBarangEvent {
  const DeleteBarangButtonTapped({super.id});
}
