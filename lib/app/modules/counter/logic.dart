import 'package:get/get.dart';

import 'state.dart';

class counterLogic extends GetxController {
  final state = counterState();
  //增加
  void add() => ++state.count;
}
