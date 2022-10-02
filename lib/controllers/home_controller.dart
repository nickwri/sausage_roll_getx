import 'package:get/get.dart';
import 'package:sausage_getx/domain/basket.dart';
import 'package:sausage_getx/models/product.dart';
import 'package:sausage_getx/navigation/routes.dart';
import 'package:sausage_getx/repositories/product_repository.dart';

class HomeController extends GetxController {
  final ProductRepository _productRepository;
  final Basket _basket;

  HomeController(this._productRepository, this._basket);

  int get quantity => _basket.quantity;

  Product get product => _productRepository.product;

  void addToBasket() {
    _basket.add();
    _showSnackBar('A ${product.articleName} has been added to your basket');
  }

  void _showSnackBar(String message) {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
        message: message,
        duration: const Duration(milliseconds: 1000),
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  void onBasketTap() {
    if (quantity > 0) {
      Get.toNamed(Routes.basket);
    } else {
      _showSnackBar('Your basket is empty');
    }
  }
}
