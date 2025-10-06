import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx/features/home/presentation/widgets/product_button_add.dart';
import 'package:getx/features/home/presentation/widgets/product_text_field_name.dart';
import 'package:getx/features/home/presentation/widgets/product_text_field_price.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, top: 200),
              child: ProductTextFieldName(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ProductTextFieldPrice(),
            ),
            ProductButtonAdd(),
          ],
        ),
      ),
    );
  }
}
