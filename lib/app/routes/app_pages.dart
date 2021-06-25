import 'package:flutter_getx/app/modules/counter/view.dart';
import 'package:flutter_getx/app/modules/home/view.dart';
import 'package:flutter_getx/app/modules/login/view.dart';
import 'package:flutter_getx/app/modules/params/view.dart';
import 'package:flutter_getx/app/modules/setting/view.dart';

import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.home, page: () => homePage()),
    GetPage(name: Routes.login, page: () => loginPage()),
    GetPage(name: Routes.counter, page: () => counterPage()),
    GetPage(name: Routes.setting, page: () => settingPage()),
    // //你可以为有参数的路由定义一个不同的页面，也可以为没有参数的路由定义一个不同的页面，但是你必须在不接收参数的路由上使用斜杠"/"，就像上面说的那样。
    GetPage(name: Routes.paramsNoArg, page:()=> paramsPage()),
    GetPage(name: Routes.paramsArgs, page:()=> paramsPage()),
  ];
}
