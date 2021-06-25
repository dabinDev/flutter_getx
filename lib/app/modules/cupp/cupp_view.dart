import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cupp_logic.dart';
import 'cupp_state.dart';

class cuppPage extends StatefulWidget {
  @override
  _cuppPageState createState() => _cuppPageState();
}

class _cuppPageState extends State<cuppPage> {
  final cuppLogic logic = Get.put(cuppLogic());
  final cuppState state = Get.find<cuppLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<cuppLogic>();
    super.dispose();
  }
}