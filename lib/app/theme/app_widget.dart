import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_colors.dart';

abstract class AppWidget {
  static Widget getAppBar(String title) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Get.back();
        },
        color: colorWhite,
      ),
      title: Text(title),
      centerTitle: true,
    );
  }
}
