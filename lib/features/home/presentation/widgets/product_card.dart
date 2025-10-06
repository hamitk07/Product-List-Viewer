import 'package:flutter/material.dart';
import 'package:getx/features/home/data/models/product_model.dart';
import 'package:getx/features/home/presentation/widgets/product_text_name.dart';
import 'package:getx/features/home/presentation/widgets/product_text_price.dart';
import '../../../../core/utils/remove_product.dart';

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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTextName(product: product),
                ProductTextPrice(product: product),
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              child: PopupMenuButton(
                icon: const Icon(Icons.remove),
                onSelected: (value) {
                  if (value == "remove") {
                    removeProduct(product);
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(value: "remove", child: Text("Remove")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
