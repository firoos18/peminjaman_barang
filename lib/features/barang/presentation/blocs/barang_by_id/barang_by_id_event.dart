part of 'barang_by_id_bloc.dart';

class BarangByIdEvent extends Equatable {
  final String? id;

  const BarangByIdEvent({this.id});

  @override
  List<Object?> get props => [id];
}

final class GetBarangById extends BarangByIdEvent {
  const GetBarangById({super.id});
}
