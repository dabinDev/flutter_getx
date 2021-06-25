import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/counter/logic.dart';
import 'package:flutter_getx/app/modules/login/view.dart';
import 'package:flutter_getx/app/routes/app_pages.dart';
import 'package:flutter_getx/app/theme/app_text_theme.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final homeLogic logic = Get.put(homeLogic());
  final homeState state = Get.find<homeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录页面"),
        ),
        body: Column(
          children: [
            Text(
              "UI组件",
              style: cardTextStyle,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () => {
                          Get.changeTheme(Get.isDarkMode
                              ? ThemeData.light()
                              : ThemeData.dark())
                        },
                    child: Text("切换主题")),
                ElevatedButton(
                    onPressed: () => {Get.snackbar("系统提示", "snackbar")},
                    child: Text("SnackBar")),
                ElevatedButton(
                    onPressed: () => {
                          Get.defaultDialog(
                            title: "系统提示",
                            content: Column(
                              children: [
                                Text("条目1"),
                                Text("条目2"),
                                Text("条目3"),
                                Text("条目4"),
                                Text("条目5"),
                              ],
                            ),
                            confirm: ElevatedButton(
                              child: Text("确定"),
                              onPressed: () {},
                            ),
                            cancel: ElevatedButton(
                              child: Text("取消"),
                              onPressed: () {
                                Get.back();
                                Get.snackbar("系统提示", "取消");
                              },
                            ),
                          ),
                        },
                    child: Text("Dialog")),
                ElevatedButton(
                    onPressed: () => {
                          Get.bottomSheet(

                              Container(
                              height: 300,
                              color: Colors.white,
                              child: ListView(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.camera,
                                      color: Colors.green,
                                    ),
                                    title: Text("条目1"),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.camera,
                                      color: Colors.yellow,
                                    ),
                                    title: Text("条目2"),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.camera,
                                      color: Colors.red,
                                    ),
                                    title: Text("条目3"),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.camera,
                                      color: Colors.grey,
                                    ),
                                    title: Text("条目4"),
                                  )
                                ],
                              )))
                        },
                    child: Text("bottomSheet")),
              ],
            ),
            Text(
              "路由和命名路由",
              style: cardTextStyle,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () => {Get.to(loginPage())},
                    child: Text("Get.to")),
                ElevatedButton(
                    onPressed: () => {Get.toNamed(Routes.login)},
                    child: Text("Get.toNamed")),
                ElevatedButton(
                    onPressed: () => {Get.off(loginPage())},
                    child: Text("Get.off")),
                ElevatedButton(
                    onPressed: () => {Get.offNamed(Routes.login)},
                    child: Text("Get.offNamed")),
              ],
            ),
            Text(
              "路由传参命名路由传参",
              style: cardTextStyle,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(loginPage(), arguments: "home to login");
                    },
                    child: Text("传递参数")),
                ElevatedButton(
                    onPressed: () {
                      var liststr = [];
                      liststr.add("测试数据1");
                      liststr.add("测试数据2");
                      liststr.add("测试数据3");
                      liststr.add("测试数据4");
                      Get.toNamed(Routes.login, arguments: liststr.toString());
                    },
                    child: Text("传递list")),
                ElevatedButton(
                    onPressed: () async {
                      var data =
                          await Get.to(loginPage(), arguments: "home to login");
                      printInfo(info: data);
                      Get.snackbar("系统提示", data.toString());
                    },
                    child: Text("带参返回")),
                ElevatedButton(
                    onPressed: () async {
                      Get.toNamed("/params/name=chenbin",
                          arguments: "home to login");
                    },
                    child: Text("高级动态url")),
              ],
            ),
            Text(
              "状态管理",
              style: cardTextStyle,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.paramsNoArg);
                    },
                    child: Text("简单状态管理器/响应式状态管理器")),
                ElevatedButton(onPressed: () {
                  print(counterLogic.to);
                  counterLogic.to.changeName("陈滨");
                }, child: Text("依赖管理")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      final counterLogic c = Get.put(counterLogic());
                      print(c.hashCode);
                      c.add();
                      c.add();
                      Get.toNamed(Routes.counter);
                      // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
                    },
                    child: Text("Get.put")),
                ElevatedButton(onPressed: () {
                  print(counterLogic.to);
                  counterLogic.to.changeName("陈滨");
                }, child: Text("依赖管理")),
              ],
            ),
          ],
        ));
  }

  @override
  void dispose() {
    Get.delete<homeLogic>();
    super.dispose();
  }
}
