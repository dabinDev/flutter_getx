import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  final settingLogic logic = Get.put(settingLogic());
  final settingState state = Get.find<settingLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<settingLogic>();
    super.dispose();
  }
}