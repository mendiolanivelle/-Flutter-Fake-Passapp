import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {

    List <String> headerNumber = ['+63'];
    String inputnumbertip = 'Enter Phone Number';

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
               child:Container(
                 decoration: BoxDecoration
                 (
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.all(Radius.circular(2))
                 ),
                 
                 child: Row
                  (
                    children: <Widget>
                    [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: DropdownButton<String>
                        (
                          iconDisabledColor: Colors.black,
                          hint: Text('+63',style: TextStyle(color: Colors.black),),
                          items: headerNumber.map((String dropDownString) 
                          {
                            return DropdownMenuItem
                            (
                              value: dropDownString,
                              child:Text(dropDownString),


                            );
                          }).toList(),

                          
                          value: '+63',
                          

                        ),
                      ),
                      VerticalDivider
                      (
                        width: 20,
                        thickness: 1,
                        indent: 6,
                        endIndent: 6,
                      ),

                      Flexible
                      (
                        child: TextField
                        (
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration
                          (
                            hintText: ('Enter Phone Number'),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,

                          ),
                          onTap: ()
                          {
                            setState(() {
                              inputnumbertip = '';
                            });
                            
                          },
                        )
                        ),
                    ],
                  ),
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