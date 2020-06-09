

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

  final items = [//List<String>.generate(10000, (i) => "Item $i");
    'kboy 1', 'kboy 2', 'kboy 3', '4',
  ];



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
        child:ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                  'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),


            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1269267428476719106/6yYseCYR_400x400.jpg'
                  ),
                ),
                Text('kboy'),
              ],
            ),
          ],
        ),
    ),
    );
  }
}
