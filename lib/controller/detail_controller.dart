import 'package:get/get.dart';

class DetailController extends GetxController {
  var arg;
  RxInt selectedImage= 0.obs;
 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    arg = Get.arguments;
  }


  List image = [
    Get.arguments,
    // 'assets/Moncase/iPhone 13 Pro-2.png',
    'assets/Moncase/Picsart_22-06-06_19-39-55-249.png',
    'assets/Moncase/Picsart_22-06-06_20-04-41-021.png',
    'assets/Moncase/Picsart_22-06-06_20-15-09-606.png',
  ];
 }
