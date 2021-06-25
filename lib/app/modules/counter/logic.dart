import 'package:get/get.dart';

import 'state.dart';

class counterLogic extends GetxController {
  static counterLogic get to => Get.find(); // 添加这一行

  final state = counterState();
  //增加
  void add() => ++state.count;

  void changeName(newName)
  {
    state.name="陈滨";
  }
}
