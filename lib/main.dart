import 'package:flutter/material.dart';
import 'page/Loading.dart';
import 'page/Signup.dart';
import 'page/Home.dart';

void main() => runApp(MaterialApp
(
  initialRoute: '/',
  routes: 
  {
    '/' : (context) => Loading(),
    'home' : (context) => Home(),
    'Signup' : (context) => Signup()
  },
));
