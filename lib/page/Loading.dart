import 'dart:ui';

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {

  void loadTimer() async
{
  await Future.delayed(Duration(seconds: 8));
  Navigator.pushReplacementNamed(context, '/Signup');

}

  @override
  void initState() {
    super.initState();
    loadTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center
      (
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
          child: Column
          (
            children: <Widget>
            [
              SizedBox
              (
                height: 200,
                width: 200,
                child: Container
                (
                  decoration: BoxDecoration
                  (
                    image: DecorationImage
                    (
                      image: AssetImage('asset/img/passapp loading screen logo.png'),
                    )
                  ),
                )
              ),
              SizedBox(height: 30,),
              Text
              (
                'Quarantine Hero',
                style: TextStyle
                (
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: 'normReg',
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}