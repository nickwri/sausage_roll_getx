import 'package:get/get.dart';
import 'package:sausage_getx/domain/basket.dart';
import 'package:sausage_getx/models/basket_product.dart';

class BasketController extends GetxController {
  final IBasket _basket;

  BasketController(this._basket);

  List<BasketProduct> get basketProducts => _basket.basketProducts;
  double get totalBasketPrice => _basket.totalBasketPrice;
}
