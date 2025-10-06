import 'package:flutter/material.dart';
import 'package:getx/features/home/data/models/product_model.dart';

class ProductTextPrice extends StatelessWidget {
  final ProductModel product;
  const ProductTextPrice({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Product Price: ${product.price}",
      style: TextStyle(fontSize: 15),
    );
  }
}
