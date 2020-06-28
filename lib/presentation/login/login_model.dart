//通信等を行うモデル

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future login() async {
    //todo
    if (mail.isEmpty) {
      throw ('メールアドレスを入力してください');
    }

    if (password.isEmpty) {
      throw ('パスワードを入力してください');
    }

    final result = await _firebaseAuth.signInWithEmailAndPassword(
      email: mail,
      password: password,
    );

    result.user.uid;
    //TODO 端末に保存
  }
}
