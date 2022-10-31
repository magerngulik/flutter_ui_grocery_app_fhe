import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/welcome_grocery_view.dart';

class WelcomeGroceryController extends State<WelcomeGroceryView> implements MvcController {
  static late WelcomeGroceryController instance;
  late WelcomeGroceryView view;

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