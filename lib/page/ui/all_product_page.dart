import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/home_controller.dart';
import 'package:product_display/resource/color.dart';
import 'package:product_display/resource/hex_colors.dart';
import '../../route/route.dart';
import '../widget/all_widget.dart';

class AllProductPage extends GetView<HomeController> {
  const AllProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget('Flutter'),
        backgroundColor: mainColor,
        body:  Container(
          decoration: BoxDecoration(
            // color: mainColor,
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                mainColor,
                HexColor('99999'),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: controller.image.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3/3.4,
                      crossAxisCount:  2),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Get.toNamed(AppRoute.detailPage,arguments:controller.image[index] );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Hero(
                          tag: controller.image[index],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Container(
                                    height: Get.width/2.5,
                                    width:Get.width/1.9,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image:  DecorationImage(image: AssetImage(controller.image[index]),
                                          fit: BoxFit.fill,
                                        ))),
                              ),
                              FractionalTranslation(
                                translation: const Offset(0, -0.5),
                                child: Container(
                                  width: Get.width/3,
                                  height:  Get.width/9,
                                  decoration: BoxDecoration(
                                    // color: mainColor,
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                        colors: [
                                          mainColor,
                                          HexColor('999999'),
                                        ],
                                      ),
                                    borderRadius: BorderRadius.circular(50),
                                    // border: Border.all(width: 5, color: Colors.white)
                                  ),
                                  child:  Center(
                                      child: normalTextWidget('Flutter', 16, Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        )
    );
  }

   categoryByProduct(title) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
                      child: Row(
                        children: [
                          boldTextWidget(title,23,mainColor),
                          const Spacer(),
                          Row(
                            children: [
                              normalTextWidget('view all ',18,pinkColor),
                              Icon(Icons.arrow_forward_ios_rounded,size: 16,color: pinkColor)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.width/1.5,
                      child: ListView.builder(
                          itemCount: controller.image.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15.0,right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Container(
                                        height: Get.width/2,
                                        width:Get.width/1.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            image:  DecorationImage(image: AssetImage(controller.image[index]),
                                              fit: BoxFit.fill,
                                            ))),
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
                            );
                          }
                      ),
                    )
                  ],
                );
  }
}
