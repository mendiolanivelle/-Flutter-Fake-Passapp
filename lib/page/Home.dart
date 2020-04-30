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
                  'CODE-ABCD',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                flex: 5,
              ),
            ]),
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
                        width: 10,
                        color: Colors.lightGreen,
                        style: BorderStyle.solid))),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Primary',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'More',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Container()
          ],
        ),
      )),
    );
  }
}
