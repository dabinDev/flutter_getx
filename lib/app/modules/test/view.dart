import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class testPage extends StatelessWidget {
  final testLogic logic = Get.put(testLogic());
  final testState state = Get.find<testLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
