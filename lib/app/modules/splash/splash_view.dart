import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_logic.dart';
import 'splash_state.dart';

class splashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  final splashLogic logic = Get.put(splashLogic());
  final splashState state = Get.find<splashLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<splashLogic>();
    super.dispose();
  }
}