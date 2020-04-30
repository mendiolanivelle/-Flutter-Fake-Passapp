import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:passapp/model/account.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield LoginInitial();
    if (event is OnclickLogin) {
      if (event.phonenumber == Account.registerNumber) {
        yield LoginCorrectNumber();
      } else {
        yield LoginInvalidNumber();
      }
    }
  }
}
