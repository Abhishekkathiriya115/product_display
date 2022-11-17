import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/bottom_navigation_controller.dart';
import '../../resource/color.dart';

class BottomNavigationPage extends GetView<BottomNavigationController> {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          extendBody: true,
          body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: [
                controller.redirectPage(),
                controller.redirectPage(),
                controller.redirectPage(),
              ]),
          bottomNavigationBar: _bottomNavigationBar()),
    );
  }

  _bottomNavigationBar() =>  BottomNavigationBar(
    // backgroundColor: mainColor,
          elevation: 10,
          fixedColor: pinkColor,
          type: BottomNavigationBarType.fixed,
          onTap: controller.onTabChange,
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          currentIndex: controller.currentPageIndex.value,
          items: [
            BottomNavigationBarItem(
                icon: _notification(
                    iconData: Icons.home_outlined, notificationIconShow: false),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _notification(
                    iconData: Icons.category, notificationIconShow: false),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: _notification(
                    iconData: Icons.person_outline, notificationIconShow: false),
                label: 'Profile'),
          ]);
  _notification(
          {required IconData iconData, bool notificationIconShow = false}) =>
      Stack(children: <Widget>[
        Container(
            width: 35,
            height: 30,
            padding: const EdgeInsets.only(right: 0.0, top: 4),
            child: Icon(iconData)),
      ]);
}
