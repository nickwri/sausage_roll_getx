import 'package:get/get.dart';
import 'package:sausage_getx/models/basket_product.dart';
import 'package:sausage_getx/models/product.dart';
import 'package:sausage_getx/repositories/product_repository.dart';

///
/// Simplified basket class which handles a single product and a quantity
///
class Basket {
  final _isEatIn = true;
  final _quantity = 0.obs;
  final ProductRepository _productRepository;

  Basket(this._productRepository);

  Product get _product => _productRepository.product;
  int get quantity => _quantity();
  List<BasketProduct> get basketProducts => [BasketProduct(_product, _quantity.value)];
  double get totalBasketPrice => _isEatIn ? _product.eatInPrice * quantity : _product.eatOutPrice * quantity;

  void add() {
    _quantity.value++;
  }
}
