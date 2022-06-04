import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controllers/addResultListController.dart';

import '../controllers/tapController.dart';

class AddResultList extends StatelessWidget {
  AddResultList({Key? key}) : super(key: key);
  TapController tapController = Get.find();
  AddResultListController addResultListController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History of Results"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView.builder(
          itemCount: addResultListController.list.value.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Icon(Icons.list),
                title: Text(
                  "${addResultListController.list.value[index]}",
                  style: TextStyle(fontSize: 24),
                ));
          }),
    );
  }
}
