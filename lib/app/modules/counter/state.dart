import 'package:get/get.dart';

class counterState {
  final  _count = 0.obs;
  get count => _count.value;
  set count(val) => _count.value = val;


  final _name = ''.obs;
  get name => _name.value;
  set name(val) => _name.value = val;



  counterState() {
    ///Initialize variables
  }
}
