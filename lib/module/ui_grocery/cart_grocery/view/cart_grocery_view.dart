import 'package:flutter/material.dart';
import '../controller/cart_grocery_controller.dart';

class CartGroceryView extends StatefulWidget {
  const CartGroceryView({Key? key}) : super(key: key);

  Widget build(context, CartGroceryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CartGrocery"),
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
  State<CartGroceryView> createState() => CartGroceryController();
}