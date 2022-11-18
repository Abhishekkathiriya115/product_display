import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/home_controller.dart';
import 'package:product_display/page/widget/all_widget.dart';
import '../../resource/color.dart';
import '../../resource/image.dart';

class ProfilePage extends GetView<HomeController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarWidget('Profile'),
      // backgroundColor: whiteBlueColor,
      body:  Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30.0),
            alignment: Alignment.topCenter,
            height:Get.width/1.3,
            decoration:  BoxDecoration(
                color:mainColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(80, 20),
                  bottomRight: Radius.elliptical(80, 20),
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: Get.width/7),
                  Center(
                    child:  CircleAvatar(
                      backgroundColor: Colors.black54,
                      radius: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(logo,
                            fit :BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          normalTextWidget('Asquare Tech Lab',23,Colors.white),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              boldTextWidget('Number : ', 18, Colors.white),
                              normalTextWidget('+91 9510731828 ', 18,pinkColor),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   boldTextWidget('Address : ', 18, pinkColor),
                   SizedBox(width:Get.width/1.5,child: normalTextWidget('#409 Pride Square, Opp. Alap Avanue Society, J.K. chowk, University Road, Raikot- 360005 ', 18,mainColor)),
                 ],
               ),
               const SizedBox(height: 15),
               Divider(color: mainColor),
               const SizedBox(height: 15),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Icon(Icons.share,color: pinkColor),
                   const SizedBox(width: 30),
                   boldTextWidget('Share App ', 18, mainColor),
                 ],
               ),
               const SizedBox(height: 15),
               Divider(color: mainColor),
               const SizedBox(height: 15),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Icon(Icons.star,color: pinkColor),
                   const SizedBox(width: 30),
                   boldTextWidget('Rate App ', 18, mainColor),
                 ],
               ),
               const SizedBox(height: 15),
               Divider(color: mainColor),
               const SizedBox(height: 15),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Icon(Icons.roundabout_right,color: pinkColor),
                   const SizedBox(width: 30),
                   boldTextWidget('About us', 18, mainColor),
                 ],
               ),
               const SizedBox(height: 15),
               Divider(color: mainColor),
               const SizedBox(height: 15),
             ],
           ),
         )
        ],
      )
    );
  }
}
