import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/my_order_view.dart';

class MyOrderController extends State<MyOrderView> implements MvcController {
  static late MyOrderController instance;
  late MyOrderView view;

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