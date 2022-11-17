import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../controller/splash_controller.dart';
import '../../resource/color.dart';
import '../../resource/image.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SlideTransition(
        position: controller.offsetAnimation,
        child:  Center(child: Padding(
          padding: EdgeInsets.all(Get.width/5.0),
          child: Image.asset(logo),
        )),
      ),
    );
  }
}
