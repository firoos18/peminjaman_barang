part of 'admin_login_bloc.dart';

class AdminLoginEvent extends Equatable {
  final LoginModel? loginModel;

  const AdminLoginEvent({this.loginModel});

  @override
  List<Object?> get props => [loginModel];
}

class AdminLoginButtonTapped extends AdminLoginEvent {
  const AdminLoginButtonTapped({super.loginModel});
}

class AdminLoginAppOpened extends AdminLoginEvent {}
