import 'package:get/get.dart';
import 'package:product_display/controller/all_product_controller.dart';

class AllProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllProductController());
  }
}
