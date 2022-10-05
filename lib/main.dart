import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sausage_getx/bindings/basket_binding.dart';
import 'package:sausage_getx/bindings/home_binding.dart';
import 'package:sausage_getx/domain/basket.dart';
import 'package:sausage_getx/navigation/routes.dart';
import 'package:sausage_getx/pages/basket_page.dart';
import 'package:sausage_getx/pages/home_page.dart';
import 'package:sausage_getx/repositories/product_repository.dart';

void main() {
  _initApp();
  runApp(const MyApp());
}

void _initApp() {
  Get.put<IProductRepository>(ProductRepository());
  Get.put<IBasket>(Basket(Get.find()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.home,
      getPages: [
        GetPage(name: Routes.home, page: () => const HomePage(), bindings: [HomeBinding()]),
        GetPage(name: Routes.basket, page: () => const BasketPage(), bindings: [BasketBinding()]),
      ],
    );
  }
}
