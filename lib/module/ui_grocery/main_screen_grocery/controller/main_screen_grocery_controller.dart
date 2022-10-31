import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/main_screen_grocery_view.dart';

class MainScreenGroceryController extends State<MainScreenGroceryView>
    implements MvcController {
  static late MainScreenGroceryController instance;
  late MainScreenGroceryView view;
  //tambahkan kedua item di bawah ini
  String categorySelected = "";
  List item = [
    "All",
    "Fruit",
    "Vegetable",
    "Egg & Meat",
    "Rice",
  ];

  get Refresh {
    update();
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
