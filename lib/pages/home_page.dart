import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sausage_getx/controllers/home_controller.dart';
import 'package:sausage_getx/core/string_labels.dart';
import 'package:sausage_getx/core/text_styles.dart';
import 'package:sausage_getx/navigation/routes.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _fab(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: controller.product.imageUri,
                placeholder: (context, url) => const Text(StringLabels.loadingMessage),
              ),
              Text(
                controller.product.customerDescription,
                style: TextStyles.body1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton _fab() {
    return FloatingActionButton(
      onPressed: controller.addToBasket,
      child: const Text(StringLabels.buy),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(controller.product.articleName),
      actions: [
        Builder(
            builder: (context) => GestureDetector(
                  onTap: controller.onBasketTap,
                  child: _basketIcon(),
                )),
      ],
    );
  }

  Widget _basketIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          const Icon(Icons.shopping_basket),
          const SizedBox(
            width: 4,
          ),
          Obx(() => Text('${controller.quantity}')),
        ],
      ),
    );
  }
}
