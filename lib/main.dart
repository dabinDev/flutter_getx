import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/home/view.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    theme: appThemeLight,//配置app当前默认主题
    debugShowCheckedModeBanner: false,
    initialRoute:"/" ,//默认路由页面
    getPages: AppPages.pages,//注册路由页面
    defaultTransition: Transition.fade,//配置过度动画效果
    routingCallback: (route)
    {
      print("route.current"+route.current);
    },
    home: Scaffold(
      body: homePage(),
    ),
  ));
}
  