import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProductsListController extends GetxController {
  List _products = [];
  List get products => _products;

  @override
  void onInit() {
    fetchProductData();
    super.onInit();
    print("oninit");
  }

  fetchProductData() async {
    Dio dio = Dio();
    var response = await dio.get('https://fakestoreapi.com/products');
    _products = response.data;
    print("products====>${_products}");
    update();
  }
}
