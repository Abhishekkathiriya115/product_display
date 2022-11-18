import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../page/ui/category_page.dart';
import '../page/ui/home_page.dart';
import '../page/ui/profile_page.dart';

class BottomNavigationController extends GetxController {
  late PageController pageController;

  var currentPageIndex = Rx<int>(0);

  @override
  onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentPageIndex.value);
  }

  _tabPages(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const CategoryPage();
      case 2:
        return const ProfilePage();
    }
  }

  onTabChange(int index) {
    currentPageIndex.value = index;
  }

  redirectPage() {
    return _tabPages(currentPageIndex.value);
  }
}
