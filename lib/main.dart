import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passapp/bloc/login_bloc.dart';
import 'page/Loading.dart';
import 'page/Signup.dart';
import 'page/Home.dart';
import 'page/Signup.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/Signup': (context) {
          return BlocProvider(
            create: (context) => LoginBloc(),
            child: Signup(),
          );
        }
      },
    ));
