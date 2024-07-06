part of 'user_register_bloc.dart';

class UserRegisterState extends Equatable {
  final RegisterResponseEntity? registerResponseEntity;
  final String? message;

  const UserRegisterState({this.message, this.registerResponseEntity});

  @override
  List<Object?> get props => [registerResponseEntity, message];
}

final class UserRegisterInitial extends UserRegisterState {}

final class UserRegisterLoading extends UserRegisterState {}

final class UserRegisterSuccess extends UserRegisterState {
  const UserRegisterSuccess({super.registerResponseEntity});
}

final class UserRegisterFailed extends UserRegisterState {
  const UserRegisterFailed({super.message});
}
