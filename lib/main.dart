import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await initialize();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  // Widget mainView = const NavigatorView();
  // Widget mainView = const FloatMainNavigationView();
  Widget mainView = const NavigatorGroceryView();
  // Widget mainView = Container(
  //   height: 100.0,
  //   decoration: const BoxDecoration(
  //     image: DecorationImage(
  //       image: AssetImage('assets/image/background.png'),
  //       fit: BoxFit.fill,
  //     ),
  //   ),
  // );

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
