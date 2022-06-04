import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/helper/initDependencies.dart';
import 'package:getx_flutter/views/productsList.dart';
import 'package:getx_flutter/views/upateX.dart';
import 'helper/initController.dart' as controllers;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await controllers.init();
  runApp(MyApp()); //runApp(widget/className)
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      debugShowCheckedModeBanner: false, // to remove banner on top-right
      home: UpdateX(),
    );
  }
}
