import 'dart:convert';
import 'package:sausage_getx/domain/basket.dart';
import 'package:sausage_getx/models/product.dart';
import 'package:sausage_getx/core/constants.dart';

///
/// Simplified repo to return a single static product
///
class ProductRepository implements IProductRepository {
  final _product = Product.fromJson(json.decode(sausageRollJson));
  @override
  get product => _product;
}
