import 'package:flutter/material.dart';
import '../controller/navigator_grocery_controller.dart';

class NavigatorGroceryView extends StatefulWidget {
  const NavigatorGroceryView({Key? key}) : super(key: key);

  Widget build(context, NavigatorGroceryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigatorGrocery"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<NavigatorGroceryView> createState() => NavigatorGroceryController();
}