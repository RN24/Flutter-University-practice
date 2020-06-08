

import 'package:flutter/material.dart';
import 'package:nandemoii/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = 'つぎへ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学!!!'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Text(
                "KBOYさん",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 30,
                  //color: Colors.orangeAccent,
                  //fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
//                foreground: Paint()
//                  ..style = PaintingStyle.stroke
//                  ..strokeWidth = 3
//                  ..color = Colors.blue[700],
                ),
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
              ),
              child: Column(
                children: <Widget>[
                  Text("ジーコさん"),
                  Text("ジーコさん"),
                  Text("ジーコさん"),
                  Text("ジーコさん"),
                ],
              ),
            ),
            Text("ジーコさん"),
//
          ],
        ),
      ),
    );
  }
}
