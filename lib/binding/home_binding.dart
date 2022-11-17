import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => ProfileController(Get.find(),Get.find()));
  }
}
