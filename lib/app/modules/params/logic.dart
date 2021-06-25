import 'package:get/get.dart';

import 'state.dart';

class paramsLogic extends GetxController {
  final state = paramsState();

  void updateName(String name) {
    state.name = name;
  }

  void updateAge(int age) {
    state.age = age;
  }

  void updateHeight(int height) {
    state.height = height;
  }

  void updateWight(int wight) {
    state.wight = wight;
    update();
  }

  void updateAll({String name, int age, int height, int wight}) {
    state.name = name;
    state.age = age;
    state.height = height;
    state.wight = wight;
  }
}
