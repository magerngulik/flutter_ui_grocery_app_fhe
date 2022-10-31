import 'package:flutter/material.dart';
import '../controller/welcome_grocery_controller.dart';

class WelcomeGroceryView extends StatefulWidget {
  const WelcomeGroceryView({Key? key}) : super(key: key);

  Widget build(context, WelcomeGroceryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WelcomeGrocery"),
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
  State<WelcomeGroceryView> createState() => WelcomeGroceryController();
}