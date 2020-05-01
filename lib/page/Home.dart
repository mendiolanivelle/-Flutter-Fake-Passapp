import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                children: <Widget>[
                  Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.menu,
                        size: 48,
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'UJUC - 4NCD',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      flex: 5,
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                          height: 350,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'asset/img/passapp home CEO.png',
                                  ),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                  width: 8,
                                  color: Colors.lightGreen,
                                  style: BorderStyle.solid))),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            image: DecorationImage(
                                image: AssetImage(
                                  'asset/img/passapp home official seal.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          content: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'asset/img/passapp home QR code.png'),
                                          ),
                                        ),
                                    barrierDismissible: true);
                              });
                            },
                          ),
                        ),
                      )
                    ],
                    overflow: Overflow.visible,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 5))),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Primary',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'NIVELLE MENDIOLA',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NormMed'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Brgy. Carreta, Cebu City',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NormMed'),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
