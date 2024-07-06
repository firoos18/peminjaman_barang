part of 'admin_register_bloc.dart';

class AdminRegisterState extends Equatable {
  final RegisterResponseEntity? registerResponseEntity;
  final String? message;

  const AdminRegisterState({this.message, this.registerResponseEntity});

  @override
  List<Object?> get props => [message, registerResponseEntity];
}

final class AdminRegisterInitial extends AdminRegisterState {}

final class AdminRegisterLoading extends AdminRegisterState {}

final class AdminRegisterSuccess extends AdminRegisterState {
  const AdminRegisterSuccess({super.registerResponseEntity});
}

final class AdminRegisterFailed extends AdminRegisterState {
  const AdminRegisterFailed({super.message});
}
