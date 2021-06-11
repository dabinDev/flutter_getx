import 'package:flutter_getx/app/modules/counter/view.dart';
import 'package:flutter_getx/app/modules/home/view.dart';
import 'package:flutter_getx/app/modules/login/view.dart';
import 'package:flutter_getx/app/modules/setting/view.dart';

import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.home, page: () => homePage()),
    GetPage(name: Routes.login, page: () => loginPage()),
    GetPage(name: Routes.counter, page: () => counterPage()),
    GetPage(name: Routes.setting, page: () => settingPage()),
  ];
}
