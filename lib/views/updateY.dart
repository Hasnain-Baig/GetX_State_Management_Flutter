import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controllers/tapController.dart';

import '../controllers/addResultListController.dart';

class UpdateY extends StatelessWidget {
  UpdateY({Key? key}) : super(key: key);
  TapController tapController = Get.find();
  AddResultListController addResultListController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Y"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "X + Y= ${tapController.z.value.toString()}",
                    style: TextStyle(fontSize: 32),
                  )),
                )),
            GetBuilder<TapController>(builder: (_) {
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: Center(
                    child: Text(
                  "X= ${tapController.x.toString()}",
                  style: TextStyle(fontSize: 32),
                )),
              );
            }),
            Obx(() => Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Y= ${tapController.y.value.toString()}",
                    style: TextStyle(fontSize: 32),
                  )),
                )),
            GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Tap to increase Y value",
                    style: TextStyle(fontSize: 24),
                  )),
                ),
                onTap: () {
                  tapController.increaseY();
                }),
            GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Tap to decrease Y value",
                    style: TextStyle(fontSize: 24),
                  )),
                ),
                onTap: () {
                  tapController.decreaseY();
                }),
            GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Add X and Y",
                    style: TextStyle(fontSize: 24),
                  )),
                ),
                onTap: () {
                  tapController.addXY();
                  addResultListController.setValues(tapController.z.value);
                }),
          ],
        ),
      ),
    );
  }
}
