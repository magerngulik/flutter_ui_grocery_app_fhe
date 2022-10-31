import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/recomment_screen_view.dart';

class RecommentScreenController extends State<RecommentScreenView> implements MvcController {
  static late RecommentScreenController instance;
  late RecommentScreenView view;

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