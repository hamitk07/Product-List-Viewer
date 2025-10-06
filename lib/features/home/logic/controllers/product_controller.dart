import "package:flutter/widgets.dart";
import "package:get/get.dart";
import "../../data/models/product_model.dart";

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var isProductsReady = false.obs;
  var productName = "empty".obs;
  var productPrice = 0.0.obs;
  var textControllerName = TextEditingController().obs;
  var textControllerPrice = TextEditingController().obs;

  @override
  void onInit() {
    fetchData();

    super.onInit();
  }

  Future<void> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    isProductsReady.value = true;
  }

  void updateName(String name) {
    productName.value = name;
  }

  void updatePrice(double price) {
    productName.value = price.toString();
  }
}
