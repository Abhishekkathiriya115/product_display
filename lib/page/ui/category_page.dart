import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/home_controller.dart';
import 'package:product_display/page/widget/all_widget.dart';
import 'package:transformable_list_view/transformable_list_view.dart';
import '../../resource/color.dart';
import '../../resource/hex_colors.dart';
import '../../route/route.dart';

class CategoryPage extends GetView<HomeController> {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Category'),
      // backgroundColor: mainColor,
      body:  Column(
        children: [
          Expanded(
            child: TransformableListView.builder(
              getTransformMatrix: getScaleDownMatrix,
              itemBuilder: (context, index) {
                return  InkWell(
                  onTap: (){
                    Get.toNamed(AppRoute.allProduct);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: Get.width/2,
                      decoration: BoxDecoration(
                        image:  DecorationImage(image: AssetImage(controller.categoryImage[index]),
                          fit: BoxFit.fill,
                          // opacity: 0.8
                        ),
                        borderRadius: BorderRadius.circular(30),
                        // color: mainColor,
                      ),
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
                                    HexColor('9999'),
                                    mainColor,
                                    HexColor('9999'),
                                  ],
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                )                            // color: mainColor,
                            ),
                            child:  Center(
                              child: boldTextWidget(
                                controller.categoryName[index],25,Colors.white),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: controller.categoryImage.length,
            ),
          ),
          const SizedBox(height: 90),
        ],
      )
    );
  }
}

Matrix4 getScaleDownMatrix(TransformableListItem item) {
  /// final scale of child when the animation is completed
  const endScaleBound = 0.3;

  /// 0 when animation completed and [scale] == [endScaleBound]
  /// 1 when animation starts and [scale] == 1
  final animationProgress = item.visibleExtent / item.size.height;

  /// result matrix
  final paintTransform = Matrix4.identity();

  /// animate only if item is on edge
  if (item.position != TransformableListItemPosition.middle) {
    final scale = endScaleBound + ((1 - endScaleBound) * animationProgress);

    paintTransform
      ..translate(item.size.width / 2)
      ..scale(scale)
      ..translate(-item.size.width / 2);
  }

  return paintTransform;
}
