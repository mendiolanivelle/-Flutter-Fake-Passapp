part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class OnclickLogin extends LoginEvent {
  final String phonenumber;

  OnclickLogin(this.phonenumber);

  @override
  // TODO: implement props
  List<Object> get props => [phonenumber];
}
