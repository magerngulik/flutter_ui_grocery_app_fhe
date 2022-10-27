import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/navigator_view.dart';

class NavigatorController extends State<NavigatorView>
    implements MvcController {
  static late NavigatorController instance;
  late NavigatorView view;
  int selectedIndex = 0;

  get refrest {
    setState(() {});
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
