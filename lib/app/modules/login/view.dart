import 'package:flutter/material.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';
import 'package:flutter_getx/app/theme/app_widget.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final loginLogic logic = Get.put(loginLogic());
  final loginState state = Get.find<loginLogic>().state;

  @override
  Widget build(BuildContext context) {
    var params = Get.arguments ?? "";
    return Scaffold(
      appBar: AppWidget.getAppBar("登录"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back(result: "我是带参返回");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        child: Text("${params.toString()}"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.calendar_today_sharp),
              onPressed: () {
                Get.toNamed(Routes.counter);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Get.toNamed(Routes.counter);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<loginLogic>();
    super.dispose();
  }
}
