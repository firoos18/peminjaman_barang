part of 'admin_bloc.dart';

class AdminState extends Equatable {
  final String? message;
  final UserResponseEntity? userResponseEntity;

  const AdminState({this.message, this.userResponseEntity});

  @override
  List<Object?> get props => [message, userResponseEntity];
}

final class AdminInitial extends AdminState {}

final class AdminLoading extends AdminState {}

final class AdminLoaded extends AdminState {
  const AdminLoaded({super.userResponseEntity});
}

final class AdminFailed extends AdminState {
  const AdminFailed({super.message});
}
