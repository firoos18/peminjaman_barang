part of 'user_login_bloc.dart';

class UserLoginEvent extends Equatable {
  final LoginModel? loginModel;

  const UserLoginEvent({this.loginModel});

  @override
  List<Object?> get props => [loginModel];
}

final class UserLoginButtonTapped extends UserLoginEvent {
  const UserLoginButtonTapped({super.loginModel});
}

final class UserLoginAppOpened extends UserLoginEvent {}
