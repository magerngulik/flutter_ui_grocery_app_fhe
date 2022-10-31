import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/navigator_grocery_view.dart';

class NavigatorGroceryController extends State<NavigatorGroceryView> implements MvcController {
  static late NavigatorGroceryController instance;
  late NavigatorGroceryView view;

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