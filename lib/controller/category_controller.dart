import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController with GetSingleTickerProviderStateMixin{
  AnimationController? animationController;

@override
  onInit(){
  super.onInit();
  animationController = AnimationController(
      duration: const Duration(milliseconds: 2000), vsync: this);
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
}
