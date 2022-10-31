import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await initialize();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  // Widget mainView = const NavigatorView();
  Widget mainView = const MainScreenGroceryView();
  // Widget mainView = const DetailGroceryView();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
