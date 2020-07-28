//通信等を行うモデル

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nandemoii/domain/book.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';
  File imageFile;
  bool isLoading = false;

  startLoading() {
    isLoading = true;
    notifyListeners();
  }

  endLoading() {
    isLoading = false;
    notifyListeners();
  }

  Future showImagePicker() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    imageFile = File(pickedFile.path);
    notifyListeners();
  }

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ('タイトルを入力してください');
    }
    final currentUser = await FirebaseAuth.instance.currentUser();
    print('getCurrentUser' + '+${currentUser.uid}');
    final imageURL = await _uploadImage();

    Firestore.instance.collection('books').add(
      {
        'title': bookTitle,
        'imageURL': imageURL,
        'createdAt': Timestamp.now(),
      },
    );
  }

  Future updateBook(Book book) async {
    final currentUser = await FirebaseAuth.instance.currentUser();
    print('getCurrentUser' + '+${currentUser.uid}');
    final imageURL = await _uploadImage();
    print('uploadImage');
    final document =
        Firestore.instance.collection('book').document(book.documentID);
    await document.updateData(
      {
        'title': bookTitle,
        'imageURL': imageURL,
        'updateAt': Timestamp.now(),
      },
    );
    print('updateBook');
  }

  Future<String> _uploadImage() async {
    final storage = FirebaseStorage.instance;

    StorageTaskSnapshot snapshot = await storage
        .ref()
        .child("books/$bookTitle")
        .putFile(imageFile)
        .onComplete;

    final String downloadURL = await snapshot.ref.getDownloadURL();

    return downloadURL;
  }
}
