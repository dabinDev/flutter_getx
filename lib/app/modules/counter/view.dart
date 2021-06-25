import 'package:flutter/material.dart';
import 'package:flutter_getx/app/theme/app_text_theme.dart';
import 'package:flutter_getx/app/theme/app_widget.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class counterPage extends StatefulWidget {
  @override
  _counterPageState createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  final counterLogic logic = Get.put(counterLogic());
  final counterState state = Get.find<counterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget.getAppBar("计数器"),
      body: Obx(() {
        return Text("${state.name}您已经点击了${state.count}", style: cardTextStyle,);
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () {
          logic.add();
        },
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<counterLogic>();
    super.dispose();
  }
}
