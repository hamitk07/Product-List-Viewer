import 'package:get/get.dart';
import 'package:getx/features/home/presentation/pages/add_product_page.dart';
import 'package:getx/features/home/presentation/pages/home_page.dart';
import 'app_routes.dart';

class AppPages {
  final pages = [
    GetPage(name: Routes.home, page: () => HomePage()),
    GetPage(name: Routes.addProduct, page: () => AddProductPage()),
  ];
}
