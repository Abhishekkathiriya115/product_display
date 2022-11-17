import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:product_display/controller/detail_controller.dart';
import 'package:product_display/page/widget/all_widget.dart';

import '../../resource/color.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: appBarWidget('Flutter'),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductImages(product: controller),
            const SizedBox(height: 30),
           Column(
             children: [
               Row(
                 children: [
                   SizedBox(width: Get.width/3.5),
                   boldTextWidget('Name : ', 18, mainColor),
                   normalTextWidget('Building ', 18, Colors.black),
                 ],
               ),
               const SizedBox(height: 10),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(width: Get.width/3.5),
                   boldTextWidget('Category : ', 18, mainColor),
                   normalTextWidget('Building ', 18, Colors.black),
                 ],
               ),
               const SizedBox(height: 10),
               Row(
                 children: [
                   SizedBox(width: Get.width/3.5),
                   boldTextWidget('Sized : ', 18, mainColor),
                   normalTextWidget('30 * 30 ', 18, Colors.black),
                 ],
               ),
               const SizedBox(height: 10),
               Row(
                 children: [
                   SizedBox(width: Get.width/3.5),
                   boldTextWidget('Price : ', 18, mainColor),
                   normalTextWidget('300 ', 18, Colors.black),
                 ],
               ),
             ],
           )
          ],
        ),
      ),
    );
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,

  }) : super(key: key);
  final DetailController product;


  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: Get.width,
          child: AspectRatio(
            aspectRatio: 1,
            child:  Hero(tag: widget.product.image[ widget.product.selectedImage.value],
            child: Image.asset(widget.product.image[ widget.product.selectedImage.value]))
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(widget.product.image.length,
                      (index) => buildSmallProductPreview(index)),
            ],
          ),
        ),
      ],
    ));
  }
   buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        widget.product.selectedImage.value = index;
      },
      child: AnimatedContainer(
        duration:  const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: Get.width/5,
        width:  Get.width/5,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(widget.product.image[index]),
            fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
              color:  mainColor.withOpacity( widget.product.selectedImage.value == index ? 1 : 0)),
        )
      ),
    );
  }
}
