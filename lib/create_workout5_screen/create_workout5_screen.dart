import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/create_workout5_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateWorkout5Screen extends GetWidget<CreateWorkout5Controller> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                height: getVerticalSize(794.00),
                width: size.width,
                margin: EdgeInsets.only(),
                // decoration: BoxDecoration(color: ColorConstant.gray900),
                child: Stack(alignment: Alignment.bottomRight,
                    children: [
                      Align(alignment: Alignment.centerLeft,
                          child: Container(margin: EdgeInsets.only(
                              top: getVerticalSize(5.00)),
                              // decoration: BoxDecoration(
                              //     color: ColorConstant.gray900),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Align(alignment: Alignment
                                      .centerLeft,
                                      child: Container(width: double.infinity,
                                          decoration: BoxDecoration(
                                              // color: ColorConstant.gray900,
                                              boxShadow: [
                                                BoxShadow(
                                                    // color: ColorConstant
                                                    // .black90005,
                                                    spreadRadius: getHorizontalSize(
                                                        2.00),
                                                    blurRadius: getHorizontalSize(
                                                        2.00),
                                                    offset: Offset(0, 4))
                                              ]),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                Container(width: size.width,
                                                    margin: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            19.00)),
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left: getHorizontalSize(
                                                                30.00),
                                                            right: getHorizontalSize(
                                                                30.29)),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment
                                                                .center,
                                                            mainAxisSize: MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                  height: getVerticalSize(
                                                                      21.00),
                                                                  width: getHorizontalSize(
                                                                      24.00),
                                                                  child: SvgPicture
                                                                      .asset(
                                                                      ImageConstant
                                                                          .imgFrame2621,
                                                                      fit: BoxFit
                                                                          .fill)),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      top: getVerticalSize(
                                                                          2.00),
                                                                      bottom: getVerticalSize(
                                                                          2.00)),
                                                                  child: Text(
                                                                      "lbl_new_workout"
                                                                          .tr,
                                                                      overflow: TextOverflow
                                                                          .ellipsis,
                                                                      textAlign: TextAlign
                                                                          .left,
                                                                      // style: AppStyle
                                                                      //     .textStyleInterbold14
                                                                      //     .copyWith(
                                                                      //     fontSize: getFontSize(
                                                                      //         14))
                                                                  )),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      top: getVerticalSize(
                                                                          2.00),
                                                                      bottom: getVerticalSize(
                                                                          0.29)),
                                                                  child: Container(
                                                                      height: getSize(
                                                                          18.71),
                                                                      width: getSize(
                                                                          18.71),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                          ImageConstant
                                                                              .imgGroup981,
                                                                          fit: BoxFit
                                                                              .fill)))
                                                            ]))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            17.00)),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .end,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .center,
                                                        mainAxisSize: MainAxisSize
                                                            .max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtFeatured();
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          30.00)),
                                                                  child: Text(
                                                                      "lbl_featured"
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
                                                                  ))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtWorkout();
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          30.00)),
                                                                  child: Text(
                                                                      "lbl_workout"
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
                                                                  ))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtProgress();
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          30.00)),
                                                                  child: Text(
                                                                      "lbl_progress"
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
                                                                  ))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: getHorizontalSize(
                                                                      30.00),
                                                                  right: getHorizontalSize(
                                                                      9.00)),
                                                              child: Text(
                                                                  "lbl_create_workout"
                                                                      .tr,
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign: TextAlign
                                                                      .left,
                                                                  // style: AppStyle
                                                                  //     .textStyleIntersemibold12
                                                                  //     .copyWith(
                                                                  //     fontSize: getFontSize(
                                                                  //         12))
                                                              ))
                                                        ])),
                                                Container(
                                                    height: getVerticalSize(
                                                        1.00),
                                                    width: getHorizontalSize(
                                                        92.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            274.00),
                                                        right: getHorizontalSize(
                                                            9.00),
                                                        bottom: getVerticalSize(
                                                            4.00)),
                                                    // decoration: BoxDecoration(
                                                    //     color: ColorConstant
                                                    //         .tealA400)
                                                )
                                              ]))), Container(margin: EdgeInsets
                                      .only(left: getHorizontalSize(30.00),
                                      top: getVerticalSize(15.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(627.00)),
                                      decoration: BoxDecoration(
                                          // color: ColorConstant.bluegray900,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5.00))),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(padding: EdgeInsets.only(
                                                left: getHorizontalSize(13.00),
                                                top: getVerticalSize(15.00),
                                                bottom: getVerticalSize(16.00)),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text("lbl_exercise_name"
                                                          .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          // style: AppStyle
                                                          //     .textStyleIntersemibold14
                                                          //     .copyWith(
                                                          //     fontSize: getFontSize(
                                                          //         14))
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              top: getVerticalSize(
                                                                  10.00),
                                                              right: getHorizontalSize(
                                                                  10.00)),
                                                          child: Text(
                                                              "lbl_3_exercises"
                                                                  .tr,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              // style: AppStyle
                                                              //     .textStyleIntersemibold10
                                                              //     .copyWith(
                                                              //     fontSize: getFontSize(
                                                              //         10))
                                                          ))
                                                    ])),
                                            Padding(padding: EdgeInsets.only(
                                                top: getVerticalSize(24.00),
                                                right: getHorizontalSize(20.00),
                                                bottom: getVerticalSize(24.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        22.00),
                                                    width: getHorizontalSize(
                                                        4.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgFrame1254,
                                                        fit: BoxFit.fill)))
                                          ]))
                                  ]))),
                      Align(alignment: Alignment.bottomRight,
                          child: Container(height: getSize(50.00),
                              width: getSize(50.00),
                              margin: EdgeInsets.only(
                                  left: getHorizontalSize(30.00),
                                  top: getVerticalSize(30.00),
                                  right: getHorizontalSize(30.00),
                                  bottom: getVerticalSize(30.00)),
                              child: FloatingActionButton(
                                  // backgroundColor: ColorCon/stant.whiteA70019,
                                  onPressed: () {},
                                  child: Container(height: getSize(50.00),
                                      width: getSize(50.00),
                                      padding: EdgeInsets.all(getSize(10)),
                                      // decoration: BoxDecoration(
                                      //     color: ColorConstant.whiteA70019),
                                      child: Container(
                                          height: getVerticalSize(25.00),
                                          width: getHorizontalSize(25.00),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgGroup13))))))
                    ]))))));
  }

  onTapTxtFeatured() {
    // Get.toNamed(AppRoutes.workoutsScreen);
  }

  onTapTxtWorkout() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtProgress() {
    // Get.toNamed(AppRoutes.progressScreen);
  }
}
