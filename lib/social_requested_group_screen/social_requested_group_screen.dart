import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/social_requested_group_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialRequestedGroupScreen
    extends GetWidget<SocialRequestedGroupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                // color: ColorConstant.gray900,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getVerticalSize(
                      32.74,
                    ),
                    width: size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        43.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              32.74,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        30.00,
                                      ),
                                      right: getHorizontalSize(
                                        30.00,
                                      ),
                                      bottom: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        15.74,
                                      ),
                                      width: getHorizontalSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgFrame2621,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                168.00,
                              ),
                              right: getHorizontalSize(
                                168.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                25.74,
                              ),
                              width: getHorizontalSize(
                                38.56,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup2,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        20.00,
                      ),
                      bottom: getVerticalSize(
                        408.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            // color: ColorConstant.bluegray900,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                // color: ColorConstant.black9000a,
                                spreadRadius: getHorizontalSize(
                                  2.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  2.00,
                                ),
                                offset: Offset(
                                  2,
                                  2,
                                ),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      5.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          top: getVerticalSize(
                                            5.00,
                                          ),
                                          bottom: getVerticalSize(
                                            3.00,
                                          ),
                                        ),
                                        child: Text(
                                          "lbl_workout_squad".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle
                                          //     .textStyleIntersemibold14
                                          //     .copyWith(
                                          //   fontSize: getFontSize(
                                          //     14,
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          // color: ColorConstant.redA200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.50,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  7.00,
                                                ),
                                                top: getVerticalSize(
                                                  7.00,
                                                ),
                                                right: getHorizontalSize(
                                                  6.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  6.00,
                                                ),
                                              ),
                                              child: Text(
                                                "lbl_01".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                // style: AppStyle
                                                //     .textStyleIntersemibold10
                                                //     .copyWith(
                                                //   fontSize: getFontSize(
                                                //     10,
                                                //   ),
                                                // ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    10.00,
                                  ),
                                  top: getVerticalSize(
                                    7.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    10.00,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  // color: ColorConstant.whiteA70019,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      // color: ColorConstant.black9000a,
                                      spreadRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                      blurRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                      offset: Offset(
                                        2,
                                        2,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Image.asset(
                                              ImageConstant.imgEllipse806,
                                              height: getSize(
                                                40.00,
                                              ),
                                              width: getSize(
                                                40.00,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                4.00,
                                              ),
                                              bottom: getVerticalSize(
                                                21.00,
                                              ),
                                            ),
                                            child: Text(
                                              "msg_who_is_going_to".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              // style: AppStyle
                                              //     .textStyleInterregular12
                                              //     .copyWith(
                                              //   fontSize: getFontSize(
                                              //     12,
                                              //   ),
                                              // ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                        bottom: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              25.00,
                                            ),
                                            width: getHorizontalSize(
                                              85.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                60.00,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse809,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse810,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse808,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse807,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                46.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                25.00,
                                              ),
                                              width: getHorizontalSize(
                                                50.00,
                                              ),
                                              child: TextFormField(
                                                controller: controller
                                                    .group124Controller,
                                                decoration: InputDecoration(
                                                  hintText: "lbl_cancle".tr,
                                                  // hintStyle: AppStyle
                                                  //     .textStyleIntermedium8
                                                  //     .copyWith(
                                                  //   fontSize: getFontSize(
                                                  //     8.0,
                                                  //   ),
                                                  //   color:
                                                  //       ColorConstant.whiteA700,
                                                  // ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        27.00,
                                                      ),
                                                    ),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  filled: true,
                                                  // fillColor:
                                                  //     ColorConstant.tealA400,
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      12.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      8.69,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      7.69,
                                                    ),
                                                  ),
                                                ),
                                                style: TextStyle(
                                                  // color:
                                                  //     ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    8.0,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                6.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                25.00,
                                              ),
                                              width: getHorizontalSize(
                                                60.00,
                                              ),
                                              child: TextFormField(
                                                controller: controller
                                                    .group123Controller,
                                                decoration: InputDecoration(
                                                  hintText: "lbl_join_group".tr,
                                                  // hintStyle: AppStyle
                                                  //     .textStyleIntermedium8
                                                  //     .copyWith(
                                                  //   fontSize: getFontSize(
                                                  //     8.0,
                                                  //   ),
                                                  //   color:
                                                  //       ColorConstant.whiteA700,
                                                  // ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        27.00,
                                                      ),
                                                    ),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  filled: true,
                                                  // fillColor:
                                                  //     ColorConstant.tealA400,
                                                  // isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      9.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      8.69,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      7.69,
                                                    ),
                                                  ),
                                                ),
                                                style: TextStyle(
                                                  // color:
                                                  //     ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    8.0,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            // color: ColorConstant.bluegray900,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                // color: ColorConstant.black9000a,
                                spreadRadius: getHorizontalSize(
                                  2.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  2.00,
                                ),
                                offset: Offset(
                                  2,
                                  2,
                                ),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      5.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          top: getVerticalSize(
                                            5.00,
                                          ),
                                          bottom: getVerticalSize(
                                            3.00,
                                          ),
                                        ),
                                        child: Text(
                                          "msg_networking_grou".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle
                                          //     .textStyleIntersemibold14
                                          //     .copyWith(
                                          //   fontSize: getFontSize(
                                          //     14,
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          // color: ColorConstant.redA200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.50,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  7.00,
                                                ),
                                                top: getVerticalSize(
                                                  7.00,
                                                ),
                                                right: getHorizontalSize(
                                                  6.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  6.00,
                                                ),
                                              ),
                                              child: Text(
                                                "lbl_01".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                // style: AppStyle
                                                //     .textStyleIntersemibold10
                                                //     .copyWith(
                                                //   fontSize: getFontSize(
                                                //     10,
                                                //   ),
                                                // ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    10.00,
                                  ),
                                  top: getVerticalSize(
                                    7.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    10.00,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  // color: ColorConstant.whiteA70019,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      // color: ColorConstant.black9000a,
                                      spreadRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                      blurRadius: getHorizontalSize(
                                        2.00,
                                      ),
                                      offset: Offset(
                                        2,
                                        2,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Image.asset(
                                              ImageConstant.imgEllipse806,
                                              height: getSize(
                                                40.00,
                                              ),
                                              width: getSize(
                                                40.00,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              245.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              top: getVerticalSize(
                                                4.00,
                                              ),
                                              bottom: getVerticalSize(
                                                6.00,
                                              ),
                                            ),
                                            child: Text(
                                              "msg_who_wants_to_go".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              // style: AppStyle
                                              //     .textStyleInterregular12
                                              //     .copyWith(
                                              //   fontSize: getFontSize(
                                              //     12,
                                              //   ),
                                              // ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                        bottom: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              25.00,
                                            ),
                                            width: getHorizontalSize(
                                              85.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                60.00,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse809,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse810,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse808,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          12.50,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse807,
                                                        height: getSize(
                                                          25.00,
                                                        ),
                                                        width: getSize(
                                                          25.00,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                46.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                25.00,
                                              ),
                                              width: getHorizontalSize(
                                                50.00,
                                              ),
                                              child: TextFormField(
                                                controller: controller
                                                    .group126Controller,
                                                decoration: InputDecoration(
                                                  hintText: "lbl_cancle".tr,
                                                  // hintStyle: AppStyle
                                                  //     .textStyleIntermedium8
                                                  //     .copyWith(
                                                  //   fontSize: getFontSize(
                                                  //     8.0,
                                                  //   ),
                                                  //   color:
                                                  //       ColorConstant.whiteA700,
                                                  // ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        27.00,
                                                      ),
                                                    ),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  filled: true,
                                                  // fillColor:
                                                  //     ColorConstant.tealA400,
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      12.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      8.69,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      7.69,
                                                    ),
                                                  ),
                                                ),
                                                style: TextStyle(
                                                  // color:
                                                  //     ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    8.0,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                8.00,
                                              ),
                                              right: getHorizontalSize(
                                                6.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                25.00,
                                              ),
                                              width: getHorizontalSize(
                                                60.00,
                                              ),
                                              child: TextFormField(
                                                controller: controller
                                                    .group125Controller,
                                                decoration: InputDecoration(
                                                  hintText: "lbl_join_group".tr,
                                                  // hintStyle: AppStyle
                                                  //     .textStyleIntermedium8
                                                  //     .copyWith(
                                                  //   fontSize: getFontSize(
                                                  //     8.0,
                                                  //   ),
                                                  //   color:
                                                  //       ColorConstant.whiteA700,
                                                  // ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        27.00,
                                                      ),
                                                    ),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  filled: true,
                                                  // fillColor:
                                                  //     ColorConstant.tealA400,
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      9.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      8.69,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      7.69,
                                                    ),
                                                  ),
                                                ),
                                                style: TextStyle(
                                                  // color:
                                                  //     ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    8.0,
                                                  ),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
