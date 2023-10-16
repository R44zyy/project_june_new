import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/Datacontroller.dart';

class DetailData extends StatelessWidget {
  int index;

  DetailData({required this.index});

  DataController controller = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Data'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.datas[index].id.toString()),
          Text(controller.datas[index].title!),
          Text(controller.datas[index].body!),

        ],
      )),
    );
  }
}





































































































