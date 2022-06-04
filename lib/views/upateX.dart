import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controllers/tapController.dart';
import 'package:getx_flutter/views/addResultsList.dart';

import '../controllers/addResultListController.dart';
import 'productsList.dart';
import 'updateY.dart';

class UpdateX extends StatelessWidget {
  UpdateX({Key? key}) : super(key: key);
  TapController tapController = Get.find();
  AddResultListController addResultListController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update X"),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
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
                    onTap: () {
                      tapController.increaseX();
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "Tap to increase X value",
                            style: TextStyle(fontSize: 24),
                          ),
                        ))),
                GestureDetector(
                    onTap: () {
                      tapController.decreaseX();
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "Tap to decrease X value",
                            style: TextStyle(fontSize: 24),
                          ),
                        ))),
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
                GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        "Go To Update Y Page",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Get.to(() => UpdateY());
                    }),
                GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        "Go To My List Page",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Get.to(() => AddResultList());
                    }),
                GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        "Go To My Products Page",
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                    onTap: () {
                      Get.to(() => ProductsList());
                    }),
              ],
            ),
          ),
        ));
  }
}
