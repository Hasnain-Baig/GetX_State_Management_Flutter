import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controllers/productsListController.dart';

class ProductsList extends StatelessWidget {
  ProductsList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ProductsListController productsListController =
        Get.put(ProductsListController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Products List"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Expanded(child: GetBuilder<ProductsListController>(builder: (_) {
            return ListView.builder(
                itemCount: productsListController.products.length,
                itemBuilder: (BuildContext context, int index) {
                  var productObj = productsListController.products[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 1,
                          color: Colors.blue,
                          child: Center(
                            child: Center(
                              child: Text(
                                "${productObj['title']}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Image.network("${productObj['image']}"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Description:",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text("${productObj['description']}"),
                        SizedBox(height: 10),
                        Text(
                          "Category:",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text("${productObj['category']}"),
                        SizedBox(height: 10),
                        Text(
                          "Price:",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text("${productObj['price']}\$"),
                      ],
                    ),
                  );
                });
          })),
        ],
      ),
    );
  }
}
