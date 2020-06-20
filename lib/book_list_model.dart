import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nandemoii/book.dart';
//通信等を行うモデル

class BookListModel extends ChangeNotifier {
  List<Book> books = [];

  Future fetchBooks() async {
    //Fire storeからの読み込み
    final docs = await Firestore.instance.collection('books').getDocuments();
    //docsからbooksへの変換
    final books = docs.documents.map((doc) => Book(doc['title'])).toList();
    this.books = books;
    notifyListeners();
  }
}
