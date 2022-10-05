import 'package:get/get.dart';
import 'package:sausage_getx/models/basket_product.dart';
import 'package:sausage_getx/models/product.dart';

///
/// Simplified basket class which handles a single product and a quantity
///
///

abstract class IBasket {
  int get quantity;
  void add();
  List<BasketProduct> get basketProducts;
  double get totalBasketPrice;
}

abstract class IProductRepository {
  Product get product;
}

class Basket implements IBasket {
  final _isEatIn = true;
  final _quantity = 0.obs;
  final IProductRepository _productRepository;

  Basket(this._productRepository);

  Product get _product => _productRepository.product;
  @override
  int get quantity => _quantity();
  @override
  List<BasketProduct> get basketProducts => [BasketProduct(_product, _quantity.value)];
  @override
  double get totalBasketPrice => _isEatIn ? _product.eatInPrice * quantity : _product.eatOutPrice * quantity;

  @override
  void add() {
    _quantity.value++;
  }
}
