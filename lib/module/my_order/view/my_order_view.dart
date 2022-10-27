import 'package:flutter/material.dart';
import '../controller/my_order_controller.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({Key? key}) : super(key: key);

  Widget build(context, MyOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MyOrder"),
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
  State<MyOrderView> createState() => MyOrderController();
}