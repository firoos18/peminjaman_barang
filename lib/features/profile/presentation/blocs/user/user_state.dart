part of 'user_bloc.dart';

class UserState extends Equatable {
  final String? message;
  final UserResponseEntity? userResponseEntity;

  const UserState({this.message, this.userResponseEntity});

  @override
  List<Object?> get props => [message, userResponseEntity];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  const UserLoaded({super.userResponseEntity});
}

class UserFailed extends UserState {
  const UserFailed({super.message});
}
