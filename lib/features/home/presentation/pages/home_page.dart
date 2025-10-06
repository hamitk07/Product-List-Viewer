import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/features/home/logic/controllers/product_controller.dart';
import 'package:getx/features/home/presentation/widgets/product_card.dart';
import '../../../../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Getx List Products"),
        backgroundColor: Colors.blue,
      ),
      body: Obx(() {
        if (controller.isProductsReady == true) {
          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final product = controller.products[index];
              return ProductCard(product: product);
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.toNamed(Routes.addProduct);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
