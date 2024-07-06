part of 'admin_register_bloc.dart';

class AdminRegisterEvent extends Equatable {
  final RegisterModel? registerModel;

  const AdminRegisterEvent({this.registerModel});

  @override
  List<Object?> get props => [registerModel];
}

final class AdminRegisterButtonTapped extends AdminRegisterEvent {
  const AdminRegisterButtonTapped({super.registerModel});
}
