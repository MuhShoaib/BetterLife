import 'package:get/get.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';

import '../create_workout1_screen/widgets/group393_item_widget.dart';
import '../create_workout1_screen/widgets/group394_item_widget.dart';
import 'controller/create_workout1_controller.dart';
import 'models/group393_item_model.dart';
import 'models/group394_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateWorkout1Screen extends GetWidget<CreateWorkout1Controller> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                margin: EdgeInsets.only(),
                // decoration: BoxDecoration(color: ColorConstant.gray900),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.centerLeft,
                          child: Padding(padding: EdgeInsets.only(
                              top: getVerticalSize(5.00)),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Obx(() =>
                                      ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .createWorkout1ModelObj.value
                                              .group393ItemList.length,
                                          itemBuilder: (context, index) {
                                            Group393ItemModel model = controller
                                                .createWorkout1ModelObj.value
                                                .group393ItemList[index];
                                            return Group393ItemWidget(model);
                                          })), Container(
                                      height: getVerticalSize(152.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: getVerticalSize(
                                                            10.00)),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize
                                                            .min,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                            // decoration: BoxDecoration(
                                                            // color: ColorConstant
                                                            //     .bluegray900),
                                                              child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .spaceBetween,
                                                                  crossAxisAlignment: CrossAxisAlignment
                                                                      .center,
                                                                  mainAxisSize: MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Row(crossAxisAlignment: CrossAxisAlignment
                                                                        .center,
                                                                        mainAxisSize: MainAxisSize
                                                                            .min,
                                                                        children: [
                                                                          Image
                                                                              .asset(
                                                                              ImageConstant
                                                                                  .imgUnsplashh4i9g,
                                                                              height: getSize(
                                                                                  80.00),
                                                                              width: getSize(
                                                                                  80.00),
                                                                              fit: BoxFit
                                                                                  .fill),
                                                                          Padding(
                                                                              padding: EdgeInsets
                                                                                  .only(
                                                                                  left: getHorizontalSize(
                                                                                      15.00),
                                                                                  top: getVerticalSize(
                                                                                      32.00),
                                                                                  bottom: getVerticalSize(
                                                                                      33.00)),
                                                                              child: Text(
                                                                                "lbl_ab_roll_outs"
                                                                                    .tr,
                                                                                overflow: TextOverflow
                                                                                    .ellipsis,
                                                                                textAlign: TextAlign
                                                                                    .left,
                                                                                // style: AppStyle
                                                                                //     .textStyleIntersemibold121
                                                                                //     .copyWith(
                                                                                //     fontSize: getFontSize(
                                                                                //         12))
                                                                              ))
                                                                        ]),
                                                                    Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            top: getVerticalSize(
                                                                                31.00),
                                                                            right: getHorizontalSize(
                                                                                20.00),
                                                                            bottom: getVerticalSize(
                                                                                31.00)),
                                                                        child: Container(
                                                                            height: getSize(
                                                                                18.00),
                                                                            width: getSize(
                                                                                18.00),
                                                                            child: SvgPicture
                                                                                .asset(
                                                                                ImageConstant
                                                                                    .imgComponent9,
                                                                                fit: BoxFit
                                                                                    .fill)))
                                                                  ])),
                                                          Container(
                                                            height: getVerticalSize(
                                                                1.00),
                                                            width: size.width,
                                                            // decoration: BoxDecoration(
                                                            //     color: ColorConstant
                                                            //         .whiteA700)
                                                          )
                                                        ]))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            10.00)),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize
                                                            .min,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Container(
                                                              height: getVerticalSize(
                                                                  80.00),
                                                              width: size.width,
                                                              child: Stack(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .centerLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(
                                                                                80.00),
                                                                            width: size
                                                                                .width,
                                                                            child: Stack(
                                                                                alignment: Alignment
                                                                                    .centerLeft,
                                                                                children: [
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .centerLeft,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                            80.00),
                                                                                        width: size
                                                                                            .width,
                                                                                        // decoration: BoxDecoration(
                                                                                        //     color: ColorConstant
                                                                                        //         .bluegray900)
                                                                                      )
                                                                                  ),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .centerLeft,
                                                                                      child: Padding(
                                                                                          padding: EdgeInsets
                                                                                              .only(
                                                                                              right: getHorizontalSize(
                                                                                                  10.00)),
                                                                                          child: Image
                                                                                              .asset(
                                                                                              ImageConstant
                                                                                                  .imgUnsplashh4i9g,
                                                                                              height: getSize(
                                                                                                  80.00),
                                                                                              width: getSize(
                                                                                                  80.00),
                                                                                              fit: BoxFit
                                                                                                  .fill)))
                                                                                ]))),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .centerRight,
                                                                        child: Padding(
                                                                            padding: EdgeInsets
                                                                                .only(
                                                                                left: getHorizontalSize(
                                                                                    20.00),
                                                                                top: getVerticalSize(
                                                                                    31.00),
                                                                                right: getHorizontalSize(
                                                                                    20.00),
                                                                                bottom: getVerticalSize(
                                                                                    31.00)),
                                                                            child: Row(
                                                                                crossAxisAlignment: CrossAxisAlignment
                                                                                    .center,
                                                                                mainAxisSize: MainAxisSize
                                                                                    .max,
                                                                                children: [
                                                                                  Padding(
                                                                                      padding: EdgeInsets
                                                                                          .only(
                                                                                          top: getVerticalSize(
                                                                                              1.00),
                                                                                          bottom: getVerticalSize(
                                                                                              2.00)),
                                                                                      child: Text(
                                                                                        "lbl_ab_roll_outs"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .left,
                                                                                        // style: AppStyle
                                                                                        //     .textStyleIntersemibold121
                                                                                        //     .copyWith(
                                                                                        //     fontSize: getFontSize(
                                                                                        //         12))
                                                                                      )),
                                                                                  Padding(
                                                                                      padding: EdgeInsets
                                                                                          .only(
                                                                                          left: getHorizontalSize(
                                                                                              170.00)),
                                                                                      child: Container(
                                                                                          height: getSize(
                                                                                              18.00),
                                                                                          width: getSize(
                                                                                              18.00),
                                                                                          child: SvgPicture
                                                                                              .asset(
                                                                                              ImageConstant
                                                                                                  .imgComponent9,
                                                                                              fit: BoxFit
                                                                                                  .fill)))
                                                                                ])))
                                                                  ])),
                                                          Container(
                                                              height: getVerticalSize(
                                                                  1.00),
                                                              width: size.width,
                                                              // decoration: BoxDecoration(
                                                              //     color: ColorConstant
                                                              //         .whiteA700)
                                                          )
                                                        ]))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            10.00)),
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin: Alignment(
                                                                0.5,
                                                                -3.0616171314629196e-17),
                                                            end: Alignment(0.5,
                                                                0.9999999999999999),
                                                            colors: [
                                                              // ColorConstant
                                                              //     .gray90000,
                                                              // ColorConstant
                                                              //     .gray900
                                                            ])),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize
                                                            .min,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: getHorizontalSize(
                                                                      30.00),
                                                                  top: getVerticalSize(
                                                                      29.00),
                                                                  right: getHorizontalSize(
                                                                      30.00),
                                                                  bottom: getVerticalSize(
                                                                      30.00)),
                                                              child: GestureDetector(
                                                                  onTap: () {
                                                                    onTapBtnAddexercises();
                                                                  },
                                                                  child: Container(
                                                                      alignment: Alignment
                                                                          .center,
                                                                      height: getVerticalSize(
                                                                          50.00),
                                                                      width: getHorizontalSize(
                                                                          315.00),
                                                                      // decoration: AppDecoration
                                                                      //     .textStyleIntersemibold141,
                                                                      child: Text(
                                                                          "msg_add_exercises"
                                                                              .tr,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          // style: AppStyle
                                                                          //     .textStyleIntersemibold141
                                                                          //     .copyWith(
                                                                          //     fontSize: getFontSize(
                                                                          //         14))
                                                                      )
                                                                  )))
                                                        ])))
                                          ])), Padding(padding: EdgeInsets.only(
                                      top: getVerticalSize(8.00)),
                                      child: Obx(() =>
                                          ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .createWorkout1ModelObj.value
                                                  .group394ItemList.length,
                                              itemBuilder: (context, index) {
                                                Group394ItemModel model = controller
                                                    .createWorkout1ModelObj
                                                    .value
                                                    .group394ItemList[index];
                                                return Group394ItemWidget(
                                                    model);
                                              })))
                                  ])))
                    ]))))));
  }

  onTapBtnAddexercises() {
    // Get.toNamed(AppRoutes.createWorkout2Screen);
  }
}
