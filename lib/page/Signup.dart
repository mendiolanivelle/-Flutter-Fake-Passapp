import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    List<String> headerNumber = ['+63'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: 100,
                  width: 260,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('asset/img/passapp signin logo.png'),
                    )),
                  )),
              Text(
                'Quarantine Hero',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontFamily: 'normMed',
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 320,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: HSVColor.fromAHSV(1, 0, 0, 0.93).toColor()),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            iconDisabledColor: Colors.black,
                            icon: Icon(Icons.keyboard_arrow_down),
                            hint: Text(
                              '+63',
                              style: TextStyle(color: Colors.black,fontFamily: 'normMed',fontWeight: FontWeight.w900,fontSize: 16),
                            ),
                            items: headerNumber.map((String dropDownString) {
                              return DropdownMenuItem(
                                value: dropDownString,
                                child: Text(dropDownString),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 20,
                        thickness: 1,
                        indent: 6,
                        endIndent: 6,
                      ),
                      Flexible(
                          child: TextField(
                          style: TextStyle(fontFamily: 'normMed',fontWeight: FontWeight.w900),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'normReg',fontWeight: FontWeight.w100,fontSize: 18,color: HSVColor.fromAHSV(1, 0, 0, 0.44).toColor()),
                          hintText: ('Enter Phone Number'),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        onTap: () {},
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ButtonTheme(
                minWidth: 320,
                height: 50,
                child: FlatButton(
                  onPressed: () {},
                  color: HSVColor.fromAHSV(1, 0, 0, 0.19).toColor(),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 19,fontFamily: 'normMed'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector
              (
                onTap: () {},
                child: Text('Sign Up',style: TextStyle(fontFamily: 'normMed',fontSize: 19,decoration: TextDecoration.underline),),
              ),
              SizedBox(height: 100,),
              Text('V 1.0.1.13',style: TextStyle(fontFamily: 'normMed',fontWeight: FontWeight.w900,fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
