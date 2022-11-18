import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  add() {
    count.value += 2;
  }

  sub() {
    if (count.value > 0) {
      count.value -= 2;
    }
  }

  List categoryImage = [
    'assets/category/mooncase.jpg',
    'assets/category/badminton.jpg',
    'assets/category/event.jpg',
    'assets/category/suri1.jpg',
    'assets/category/BriflyD.jpg',
    // 'assets/category/carUser.jpg',
    // 'assets/category/lu.jpg',
    // 'assets/category/re.jpg',
    // 'assets/category/scarD.jpg',
    // 'assets/category/shop.jpg',
    // 'assets/category/teleD.jpg',
    // 'assets/category/teleP.jpg',
    // 'assets/category/wstatus.jpg',
  ];

  List categoryName = [
    'Mooncase',
    'Badminton',
    'Event Management',
    'suriwallet',
    'Brifly News',
    // 'Taxi Booking User',
    // 'Lambula',
    // 'Restirant',
    // ''
  ];
  List moncaseApp = [
    // 'assets/Moncase/iPhone 13 Pro.png',
    // 'assets/Moncase/iPhone 13 Pro-2.png',
    'assets/Moncase/Picsart_22-06-06_19-39-55-249.png',
    'assets/Moncase/Picsart_22-06-06_20-04-41-021.png',
    'assets/Moncase/Picsart_22-06-06_20-15-09-606.png',
  ];
}
