import 'package:get/get.dart';
import 'package:product_display/controller/category_controller.dart';

import '../controller/bottom_navigation_controller.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());

    // Get.lazyPut(() => ProfileController(Get.find(),Get.find()));
  }
}
