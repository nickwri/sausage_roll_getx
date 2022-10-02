import 'dart:convert';
import 'package:sausage_getx/models/product.dart';
import 'package:sausage_getx/core/constants.dart';

///
/// Simplified repo to return a single static product
///
class ProductRepository {
  final _product = Product.fromJson(json.decode(sausageRollJson));
  get product => _product;
}
