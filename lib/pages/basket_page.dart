import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sausage_getx/controllers/basket_controller.dart';
import 'package:sausage_getx/core/string_labels.dart';
import 'package:sausage_getx/core/text_styles.dart';
import 'package:sausage_getx/utils/string_format.dart';
import 'package:sausage_getx/widgets/basket_item.dart';

class BasketPage extends GetView<BasketController> {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _fab(),
    );
  }

  Widget _body() {
    return Obx(() => Column(children: [
          ...controller.basketProducts.map((basketProduct) => BasketItem(
              uri: basketProduct.product.thumbnailUri,
              description: basketProduct.product.articleName,
              quantity: basketProduct.quantity,
              price: basketProduct.product.eatInPrice)),
          _total()
        ]));
  }

  Widget _total() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: _text('£${formatCurrency(controller.totalBasketPrice)}'),
    );
  }

  Widget _text(String text) {
    return SizedBox(
        width: double.infinity,
        child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Total: $text',
              style: TextStyles.body1,
            )));
  }

  FloatingActionButton _fab() => FloatingActionButton(
        onPressed: _checkout,
        child: const Text(StringLabels.basketPageFABTitle),
      );

  AppBar _appBar() => AppBar(
        title: const Text(StringLabels.basketPageTitle),
      );

  void _checkout() {}
}
