import 'package:get/get.dart';

class counterState {
  final RxInt _count = 0.obs;
  get count => _count.value;
  set count(val) => _count.value = val;

  counterState() {
    ///Initialize variables
  }
}
