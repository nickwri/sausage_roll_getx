// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      (json['eatOutPrice'] as num).toDouble(),
      (json['eatInPrice'] as num).toDouble(),
      json['articleName'] as String,
      json['customerDescription'] as String,
      json['imageUri'] as String,
      json['thumbnailUri'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'eatOutPrice': instance.eatOutPrice,
      'eatInPrice': instance.eatInPrice,
      'articleName': instance.articleName,
      'customerDescription': instance.customerDescription,
      'imageUri': instance.imageUri,
      'thumbnailUri': instance.thumbnailUri,
    };
