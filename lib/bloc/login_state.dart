part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginCorrectNumber extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class LoginInvalidNumber extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
