import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Flexible Layout"),),
      body: Column(children: <Widget>[
        Flexible(
          flex: 1, //flex column take 1:4
          child: Row(children: <Widget>[
            Flexible(
            flex: 1, //flex row 1:3
            child: Container(
              margin: EdgeInsets.all(5), //giving margin 5 for all sides
              color: Colors.red,
            )),
            Flexible(
            flex: 1, //flex row 1:3
            child: Container(
              margin: EdgeInsets.all(5), //giving margin 5 for all sides
              color: Colors.green,
            )),
            Flexible(
            flex: 1, //flex row 1:3
            child: Container( 
              margin: EdgeInsets.all(5), //giving margin 5 for all sides
              color: Colors.purple,
            )),
          ],),
        ),
          Flexible(
          flex: 2, //flex column 2:4
          child: Container(
            margin: EdgeInsets.all(5), //giving margin 5 for all sides
            color: Colors.amber,
          )),
          Flexible(
          flex: 1, //flex column 1:4
          child: Container(
            margin: EdgeInsets.all(5), //giving margin 5 for all sides
            color: Colors.blue,
          )),
      ],),
      )
    );
  }
}
