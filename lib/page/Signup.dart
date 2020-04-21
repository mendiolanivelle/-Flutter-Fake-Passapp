import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center
      (
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column
          (
            children: <Widget>
            [
              SizedBox
              (
                height: 100,
                width: 260,
                child: Container
                (
                  decoration: BoxDecoration
                  (
                    image: DecorationImage
                    (
                      image: AssetImage('asset/img/passapp signin logo.png'),
                    )
                  ),
                )
              ),
              Text
              (
                'Quarantine Hero',
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 38,
                  fontFamily: 'normMed',
                  
                ),
              ),
              SizedBox(height: 100,),
              SizedBox(
              width: 300,
              height: 45,
               child:Row
                (
                  children: <Widget>
                  [
                    Text('mendiola'),

                    Flexible
                    (
                      child: TextField
                      (
                        decoration: InputDecoration
                        (
                          enabledBorder: OutlineInputBorder
                          (
                            borderSide: BorderSide(color: Colors.black)
                          )
                        ),
                      )
                      ),
                  ],
                ),
              ), 
              SizedBox(height: 80,),
              ButtonTheme
              (
                minWidth: 300,
                height: 50,
              child:FlatButton
              (
                onPressed: () {},
                color: HSVColor.fromAHSV(1, 0, 0, 0.19).toColor(),
                child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}