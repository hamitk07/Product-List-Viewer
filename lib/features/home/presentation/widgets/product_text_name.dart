import 'package:flutter/material.dart';
import 'package:getx/features/home/data/models/product_model.dart';

class ProductTextName extends StatelessWidget {
  final ProductModel product;
  const ProductTextName({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Product Name: ${product.name}",
      style: TextStyle(fontSize: 20),
    );
  }
}
