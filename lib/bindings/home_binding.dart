import 'package:get/get.dart';
import 'package:sausage_getx/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(Get.find(), Get.find()));
  }
}
