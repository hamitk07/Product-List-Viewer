import 'package:flutter/material.dart';
import 'package:getx/core/utils/add_product.dart';
import 'package:get/get.dart';
import 'package:getx/features/home/logic/controllers/product_controller.dart';

class ProductButtonAdd extends StatelessWidget {
  const ProductButtonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          addProduct(
            controller.productName.toString(),
            controller.productPrice.toDouble(),
          );
          controller.textControllerName().clear();
          controller.textControllerPrice().clear();
          controller.productName.value = "empty";
          controller.productPrice.value = 0;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text("Add", style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
