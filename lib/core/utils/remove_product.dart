import "package:get/get.dart";
import "package:getx/features/home/data/models/product_model.dart";
import "package:getx/features/home/logic/controllers/product_controller.dart";

void removeProduct(ProductModel product) {
  final controller = Get.put(ProductController());
  var productsList = controller.products;

  productsList.remove(product);
}
