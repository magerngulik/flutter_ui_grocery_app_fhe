import 'package:fhe_template/module/navigator/view/navigator_view.dart';
import 'package:fhe_template/setup.dart';
import 'package:fhe_template/state_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Widget mainView = const NavigatorView();
  // if (FirebaseAuth.instance.currentUser != null) {
  //   mainView = Container();
  // }

  runApp(
    MaterialApp(
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
