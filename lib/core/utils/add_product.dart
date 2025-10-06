import "../../features/home/logic/controllers/product_controller.dart";
import "../../features/home/data/models/product_model.dart";
import 'package:get/get.dart';

void addProduct(String name, double price) {
  final controller = Get.put(ProductController());

  controller.products.add(ProductModel(name: name, price: price));
}
