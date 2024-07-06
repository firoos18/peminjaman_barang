part of 'user_register_bloc.dart';

class UserRegisterEvent extends Equatable {
  final RegisterModel? registerModel;

  const UserRegisterEvent({this.registerModel});

  @override
  List<Object?> get props => [registerModel];
}

final class UserRegisterButtonTapped extends UserRegisterEvent {
  const UserRegisterButtonTapped({super.registerModel});
}
