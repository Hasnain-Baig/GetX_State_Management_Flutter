import 'package:get/get.dart';
import 'package:getx_flutter/controllers/tapController.dart';
import 'package:getx_flutter/controllers/addResultListController.dart';
// import '../controllers/productsListController.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => AddResultListController());
  // Get.lazyPut(() => ProductsListController());
}
