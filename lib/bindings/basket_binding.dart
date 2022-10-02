import 'package:get/get.dart';
import 'package:sausage_getx/controllers/basket_controller.dart';

class BasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BasketController(Get.find()));
  }
}
