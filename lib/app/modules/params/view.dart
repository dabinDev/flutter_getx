import 'package:flutter/material.dart';
import 'package:flutter_getx/app/theme/app_widget.dart';
import 'package:get/get.dart';

import 'logic.dart';

class paramsPage extends StatefulWidget {
  @override
  _paramsPageState createState() => _paramsPageState();
}

class _paramsPageState extends State<paramsPage> {
  final paramsLogic logic = Get.put(paramsLogic());

  @override
  Widget build(BuildContext context) {
    var args = Get.parameters;
    paramsLogic controler=Get.find();
    return Scaffold(
      appBar: AppWidget.getAppBar("参数页"),
      body: Column(
        children: [
          Text('${args}'),
          TextField(
              decoration: InputDecoration(
                labelText: "姓名"
              ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "年龄"
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "身高(cm)"
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "体重（kg）"
            ),
          ),
          Row(
            children: [
              TextButton(child: Text("change"),onPressed: (){
                controler.updateAll(name: "陈滨",age: 28,height: 166,wight: 72);
              },),
            ],
          ),
          Row(
            children: [
              Text(""),
              GetBuilder<paramsLogic>(
                builder: (logic) {
                  return Text('姓名:${logic.state.name}');
                },
              ),
              Obx(() {
                return Text('身高:${controler.state.height}');
              }),
              GetX<paramsLogic>(
                init: paramsLogic(),
                initState: (_) {},
                builder: (logic) {
                  return Text('体重${logic.state.wight}kg');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<paramsLogic>();
    super.dispose();
  }
}
