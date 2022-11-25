import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/home_controller.dart';
import 'package:product_display/resource/color.dart';
import 'package:product_display/route/route.dart';
import '../../controller/bottom_navigation_controller.dart';
import '../../resource/hex_colors.dart';
import '../widget/all_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController navigationController =
    Get.put(BottomNavigationController());
    return Scaffold(
      backgroundColor: mainColor,
      body:SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color:Colors.white,
              child: Column(
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
                          Row(
                            children: [
                              normalTextWidget('Welcome',23,Colors.white),
                              boldTextWidget(' Asquare',23,pinkColor),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width:Get.width/5,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Horizon',
                                  ),
                                  child: AnimatedTextKit(
                                    pause: const Duration(microseconds: 1000),
                                    animatedTexts: [
                                      RotateAnimatedText('Flutter'),
                                      RotateAnimatedText('Web'),
                                      RotateAnimatedText('Android'),
                                      RotateAnimatedText('IOS'),
                                    ],
                                    onTap: () {
                                    },
                                  ),
                                ),
                              ),
                              normalTextWidget(' Development',23,Colors.white),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.width/5),
                  CategoryProduct(controller: controller,title: 'Mooncase'),
                  CategoryProduct(controller: controller,title: 'Event Management'),
                  CategoryProduct(controller: controller,title: 'Badminton'),
                  const SizedBox(height: 60),
                ],
              ),
            ),
            Positioned(
              top: Get.width/2.2,
              right: 0.0,
              left: 0.0,
              bottom: 0,
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: Row(
                            children: [
                              boldTextWidget('Top Category',23,Colors.white),
                              const Spacer(),
                              InkWell(
                                onTap: (){
                                  navigationController.currentPageIndex.value = 1;
                                },
                                child: Row(
                                  children: [
                                    normalTextWidget('view all ',18,pinkColor),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 16,color: pinkColor)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(5,
                                      (index) =>InkWell(
                                        onTap: (){
                                          Get.toNamed(AppRoute.allProduct);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child:  Container(
                                            height: Get.width/2.4,
                                            decoration:  BoxDecoration(
                                              image:  DecorationImage(image: AssetImage(controller.categoryImage[index]),
                                                  fit: BoxFit.fill,
                                                  opacity: 0.9
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                              // color: mainColor,
                                            ),
                                            width: Get.width/1.3,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width:Get.width,
                                                  decoration:  BoxDecoration(
                                                      gradient: LinearGradient(
                                                        begin: Alignment.bottomRight,
                                                        end: Alignment.topLeft,
                                                        colors: [
                                                          mainColor,
                                                          HexColor('9999'),
                                                        ],
                                                      ),
                                                      borderRadius: const BorderRadius.only(
                                                        bottomLeft: Radius.circular(30),
                                                        bottomRight: Radius.circular(30),
                                                      )                            // color: mainColor,
                                                  ),
                                                  child:Center(
                                                    child: boldTextWidget(
                                                        controller.categoryName[index],25,Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key,required this.controller,required this.title}) : super(key: key);
  final HomeController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
            child: Row(
              children: [
                boldTextWidget(title,23,mainColor),
                const Spacer(),
                InkWell(
                  onTap: (){
                    Get.toNamed(AppRoute.allProduct);
                  },
                  child: Row(
                    children: [
                      normalTextWidget('view all ',18,pinkColor),
                      Icon(Icons.arrow_forward_ios_rounded,size: 16,color: pinkColor)
                    ],
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(controller.moncaseApp.length,
                        (index) {
                      final int count = controller.moncaseApp.length > 10
                          ? 10
                          : controller.moncaseApp.length;
                      final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: controller.animationController!,
                              curve: Interval((1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                      controller.animationController?.forward();
                      return AnimatedBuilder(
                        animation:  controller.animationController!,
                        builder: (BuildContext context, Widget? child) {
                          return FadeTransition(
                            opacity: animation,
                            child: Transform(
                              transform: Matrix4.translationValues(100 * (1.0 - animation.value), 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                onTap: (){
                                  Get.toNamed(AppRoute.detailPage,arguments:controller.moncaseApp[index]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        child: Hero(
                                          tag: controller.moncaseApp[index],
                                          child: Container(
                                              height: Get.width/2,
                                              width:Get.width/1.9,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  image:  DecorationImage(image: AssetImage(controller.moncaseApp[index]),
                                                    fit: BoxFit.fill,
                                                  ))),
                                        ),
                                      ),
                                      FractionalTranslation(
                                        translation: const Offset(0, -0.5),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          child: Container(
                                            width: Get.width/3,
                                            height:  Get.width/9,
                                            decoration: BoxDecoration(
                                              color: mainColor,
                                              borderRadius: BorderRadius.circular(50),
                                              // border: Border.all(width: 5, color: Colors.white)
                                            ),
                                            child:  Center(
                                                child: normalTextWidget('Flutter', 18, Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
