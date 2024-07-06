part of 'user_login_bloc.dart';

class UserLoginState extends Equatable {
  final LoginResponseEntity? loginResponseEntity;
  final String? message;

  const UserLoginState({this.loginResponseEntity, this.message});

  @override
  List<Object?> get props => [message, loginResponseEntity];
}

final class UserLoginInitial extends UserLoginState {}

final class UserLoginLoading extends UserLoginState {}

final class UserLoginSuccess extends UserLoginState {
  const UserLoginSuccess({super.loginResponseEntity});
}

final class UserLoginFailed extends UserLoginState {
  const UserLoginFailed({super.message});
}
