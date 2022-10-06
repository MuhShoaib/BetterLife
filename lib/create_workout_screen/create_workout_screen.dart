import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import 'controller/create_workout_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateWorkoutScreen extends GetWidget<CreateWorkoutController> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                margin: EdgeInsets.only(),
                // decoration: BoxDecoration(color: ColorConstant.gray900),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(alignment: Alignment.centerLeft,
                          child: Container(width: double.infinity,
                              margin: EdgeInsets.only(
                                  top: getVerticalSize(5.00)),
                              decoration: BoxDecoration(
                                  // color: ColorConstant.gray900,
                                  boxShadow: [BoxShadow(
                                      // color: ColorConstant
                                      // .black90005,
                                      spreadRadius: getHorizontalSize(2.00),
                                      blurRadius: getHorizontalSize(2.00),
                                      offset: Offset(0, 4))
                                  ]),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Align(alignment: Alignment
                                      .centerLeft,
                                      child: Container(width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(19.00),
                                              bottom: getVerticalSize(37.00)),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                      30.00),
                                                  right: getHorizontalSize(
                                                      141.00)),
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
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgFrame2621,
                                                            fit: BoxFit.fill)),
                                                    Padding(padding: EdgeInsets
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
                                                        ))
                                                  ]))))
                                  ]))),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          top: getVerticalSize(30.00),
                          right: getHorizontalSize(30.00)),
                          child: Container(height: getVerticalSize(25.00),
                              width: getHorizontalSize(315.00),
                              child: TextFormField(
                                  controller: controller.group980Controller,
                                  decoration: InputDecoration(
                                      hintText: "msg_enter_workout_n".tr,
                                      // hintStyle: AppStyle
                                      //     .textStyleInterregular121.copyWith(
                                      //     fontSize: getFontSize(12.0),
                                      //     color: ColorConstant.gray400),
                                      enabledBorder: UnderlineInputBorder(
                                          // borderSide: BorderSide(
                                          //     color: ColorConstant.whiteA70019,
                                          //     width: 1)
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          // borderSide: BorderSide(
                                          //     color: ColorConstant.whiteA70019,
                                          //     width: 1)
                                      ),
                                      isDense: true,
                                      contentPadding: EdgeInsets.only(
                                          top: getVerticalSize(1.03),
                                          bottom: getVerticalSize(11.03))),
                                  style: TextStyle(
                                      // color: ColorConstant.gray400,
                                      fontSize: getFontSize(12.0),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400)))),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          top: getVerticalSize(50.00),
                          right: getHorizontalSize(30.00),
                          bottom: getVerticalSize(20.00)),
                          child: GestureDetector(onTap: () {
                            onTapBtnAddexerciseto();
                          },
                              child: Container(alignment: Alignment.center,
                                  height: getVerticalSize(50.00),
                                  width: getHorizontalSize(315.00),
                                  // decoration: AppDecoration
                                  //     .textStyleIntermedium142,
                                  child: Text("msg_add_exercise_to".tr,
                                      textAlign: TextAlign.center,
                                      // style: AppStyle.textStyleIntermedium142
                                      //     .copyWith(
                                      //     fontSize: getFontSize(14))
                                  ))))
                    ]))))));
  }

  onTapBtnAddexerciseto() {
    // Get.toNamed(AppRoutes.createWorkout1Screen);
  }
}
