import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/home_controller.dart';
import '../../resource/color.dart';
import '../../resource/image.dart';

class ProfilePage extends GetView<HomeController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBlueColor,
      body:  Center(child: Padding(
          padding: EdgeInsets.all(Get.width/5.0),
          child: Image.asset(logo),
        )
      )
    );
  }
}
