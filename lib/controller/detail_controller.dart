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
    'assets/EXTERIOR/EXTERIOR_page-0002.jpg',
    'assets/EXTERIOR/EXTERIOR_page-0003.jpg',
    'assets/EXTERIOR/EXTERIOR_page-0004.jpg',
    'assets/EXTERIOR/EXTERIOR_page-0005.jpg',
  ];
 }
