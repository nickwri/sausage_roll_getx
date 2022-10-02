import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sausage_getx/core/text_styles.dart';
import 'package:sausage_getx/utils/string_format.dart';

class BasketItem extends StatelessWidget {
  final String uri;
  final String description;
  final int quantity;
  final double price;

  double get totalItemPrice => price * quantity;

  const BasketItem(
      {super.key, required this.uri, required this.description, required this.quantity, required this.price});

  @override
  Widget build(BuildContext context) {
    return _basketItems();
  }

  Widget _basketItems() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _thumbnail(),
          _text('$quantity'),
          _text('£${formatCurrency(totalItemPrice)}'),
        ],
      ),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: TextStyles.body1,
    );
  }

  Widget _thumbnail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CachedNetworkImage(
            imageUrl: uri,
            width: 80,
          ),
        ),
        _text(description),
      ],
    );
  }
}
