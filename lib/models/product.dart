import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final double eatOutPrice;
  final double eatInPrice;
  final String articleName;
  final String customerDescription;
  final String imageUri;
  final String thumbnailUri;

  Product(
      this.eatOutPrice, this.eatInPrice, this.articleName, this.customerDescription, this.imageUri, this.thumbnailUri);

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
