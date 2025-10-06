import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx/features/home/logic/controllers/product_controller.dart';

class ProductTextFieldPrice extends StatelessWidget {
  const ProductTextFieldPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return TextField(
      controller: controller.textControllerPrice(),
      onChanged: (value) => controller.productPrice(double.parse(value)),
      decoration: InputDecoration(
        label: Text("Price"),
        border: OutlineInputBorder(),
      ),
    );
  }
}
