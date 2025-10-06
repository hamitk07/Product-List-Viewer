import 'package:flutter/material.dart';
import 'package:getx/features/home/data/models/product_model.dart';
import 'package:getx/features/home/presentation/widgets/product_text_name.dart';
import 'package:getx/features/home/presentation/widgets/product_text_price.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      margin: EdgeInsets.only(top: 16, right: 8, left: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductTextName(product: product),
            ProductTextPrice(product: product),
          ],
        ),
      ),
    );
  }
}
