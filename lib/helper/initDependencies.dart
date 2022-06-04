import 'package:get/get.dart';
import 'package:getx_flutter/controllers/tapController.dart';
import 'package:getx_flutter/controllers/addResultListController.dart';
// import '../controllers/productsListController.dart';

class InitDep extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => AddResultListController());
    // Get.lazyPut(() => ProductsListController());
  }
}
