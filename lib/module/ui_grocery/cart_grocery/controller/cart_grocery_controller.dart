import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/cart_grocery_view.dart';

class CartGroceryController extends State<CartGroceryView> implements MvcController {
  static late CartGroceryController instance;
  late CartGroceryView view;

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