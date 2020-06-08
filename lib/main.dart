

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
  String name;

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



  final myFocusNode = FocusNode();
  String name;
  final myController = TextEditingController();

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
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(

                  hintText: '田中太郎'
              ),
              onChanged: (text) { //都度都度変更
                print("First text field: $text");
                name = text;
              },
            ),
            TextField(
              controller: myController,//ボタン押したときだけ！
              focusNode: myFocusNode,
              decoration: InputDecoration(
                hintText: '趣味'
              ),
            ),
            RaisedButton(
              child: Text('新規登録する'),
              onPressed: () {
                // TODO:
                //myFocusNode.requestFocus();
                //print(myController.text);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the user has entered by using the
                      // TextEditingController.
                      content: Text('どこ触っとんねん！'),
                    );
                  },
                );
              },
            ),
        ],
        ),
        ),
      );

  }
}
