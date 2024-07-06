part of 'admin_login_bloc.dart';

class AdminLoginState extends Equatable {
  final LoginResponseEntity? loginResponseEntity;
  final String? message;

  const AdminLoginState({this.loginResponseEntity, this.message});

  @override
  List<Object?> get props => [loginResponseEntity, message];
}

class AdminLoginInitial extends AdminLoginState {}

class AdminLoginLoading extends AdminLoginState {}

class AdminLoginSuccess extends AdminLoginState {
  const AdminLoginSuccess({super.loginResponseEntity});
}

class AdminLoginFailed extends AdminLoginState {
  const AdminLoginFailed({super.message});
}
