import 'package:flutter/material.dart';

class NextNextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('次の次の画面!!!'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.green,
        child: Center(
          child: OutlineButton(
            child: Text('まっさらなはじめの画面に戻る'),
            onPressed: (){
              //ここに押したら反応するコードをかく
              //画面遷移のコードを書く
              Navigator.pushNamed(
                  context, '/');
            },
          ),
        ),

      ),
    );
  }

}