import 'package:get/get.dart';
import 'package:sausage_getx/domain/basket.dart';
import 'package:sausage_getx/models/product.dart';
import 'package:sausage_getx/repositories/product_repository.dart';

class HomeController extends GetxController {
  final ProductRepository _productRepository;
  final Basket _basket;

  HomeController(this._productRepository, this._basket);

  int get quantity => _basket.quantity;

  Product get product => _productRepository.product;

  void addToBasket() {
    _basket.add();
    _showSnackBar();
  }

  void _showSnackBar() {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
        message: 'A ${product.articleName} has been added to your basket',
        duration: const Duration(milliseconds: 1000),
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
