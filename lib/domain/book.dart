import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  //要素としてのモデル（エンティティ）
  Book(DocumentSnapshot doc) {
    documentID = doc.documentID;
    title = doc['title'];
  }

  String documentID;
  String title;
}
