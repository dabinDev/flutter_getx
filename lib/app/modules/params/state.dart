import 'package:get/state_manager.dart';

class paramsState {
  final _name = '小明'.obs;

  get name => _name;

  set name(value) {
    _name = value;
  }

  final _age = 16.obs;
  get age => _age.value;
  set age(val) => _age.value = val;



  final _height = 166.obs;
  get height => _height.value;
  set height(val) => _height.value = val;



  final _wight = 74.obs;
  get wight => _wight.value;
  set wight(val) => _wight.value = val;







}
