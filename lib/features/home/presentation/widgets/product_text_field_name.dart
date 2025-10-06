import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx/features/home/logic/controllers/product_controller.dart';

class ProductTextFieldName extends StatelessWidget {
  const ProductTextFieldName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return TextField(
      controller: controller.textControllerName(),
      onChanged: (value) => {controller.updateName(value)},
      decoration: InputDecoration(
        label: Text("Name"),
        border: OutlineInputBorder(),
      ),
    );
  }
}
