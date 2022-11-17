import 'package:get/get.dart';

class AllProductController extends GetxController {
  var count = 0.obs;

  add() {
    count.value += 2;
  }

  sub() {
    if (count.value > 0) {
      count.value -= 2;
    }
  }

 List image = [
    'assets/EXTERIOR/EXTERIOR_page-0001.jpg',
   'assets/EXTERIOR/EXTERIOR_page-0002.jpg',
   'assets/EXTERIOR/EXTERIOR_page-0003.jpg',
   'assets/EXTERIOR/EXTERIOR_page-0004.jpg',
   'assets/EXTERIOR/EXTERIOR_page-0005.jpg',
  ];

  List INTERIORImage = [
    'assets/INTERIOR/INTERIOR_page-0001.jpg',
    'assets/INTERIOR/INTERIOR_page-0002.jpg',
    'assets/INTERIOR/INTERIOR_page-0003.jpg',
    'assets/INTERIOR/INTERIOR_page-0004.jpg',
    'assets/INTERIOR/INTERIOR_page-0005.jpg',
    'assets/INTERIOR/INTERIOR_page-0001.jpg',
    'assets/INTERIOR/INTERIOR_page-0002.jpg',
    'assets/INTERIOR/INTERIOR_page-0003.jpg',
    'assets/INTERIOR/INTERIOR_page-0004.jpg',
    'assets/INTERIOR/INTERIOR_page-0005.jpg',
  ];
}
