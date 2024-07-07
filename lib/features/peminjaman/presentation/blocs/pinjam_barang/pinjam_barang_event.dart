part of 'pinjam_barang_bloc.dart';

class PinjamBarangEvent extends Equatable {
  final PinjamModel? pinjamModel;

  const PinjamBarangEvent({this.pinjamModel});

  @override
  List<Object?> get props => [pinjamModel];
}

final class PinjamBarangButtonTapped extends PinjamBarangEvent {
  const PinjamBarangButtonTapped({super.pinjamModel});
}
