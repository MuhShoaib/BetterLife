import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/utils/routes.dart';
import 'package:get/get.dart';

import 'controller/app_navigation_controller.dart';

import 'package:flutter/material.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.whiteA700,
            body: Container(
                // decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
          Container(
              width: size.width,
              // decoration: BoxDecoration(color: ColorConstant.whiteA700),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(20.00),
                                top: getVerticalSize(10.00),
                                right: getHorizontalSize(20.00),
                                bottom: getVerticalSize(10.00)),
                            child: Text(
                              "lbl_app_navigation".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              // style: AppStyle.textStyleregular20
                              //     .copyWith(fontSize: getFontSize(
                              //     20)
                              // )
                            ))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: getHorizontalSize(20.00)),
                            child: Text(
                              "msg_check_your_app".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              // style: AppStyle.textStyleregular16
                              //     .copyWith(fontSize: getFontSize(
                              //     16))
                            ))),
                    Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: EdgeInsets.only(top: getVerticalSize(5.00)),
                      // decoration: BoxDecoration(
                      //     color: ColorConstant.black900)
                    )
                  ])),
          Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                      child: Container(
                          // decoration: BoxDecoration(
                          //     color: ColorConstant.whiteA700),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                        GestureDetector(
                            onTap: () {
                              onTapWorkout();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                // color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20)
                                                // )
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapProgress();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_progress".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout1();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout2();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout3();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout4();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(

                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocial();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_social2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTaptf();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapNEARYOU();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_near_you".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSearch();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_search".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSearch1();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_search".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCreateWorkout5();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700
                                // ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_create_workout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20)))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts2();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts3();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts4();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts5();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_workouts".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSignin();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_sign_in2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSignup();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_sign_up2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        //     decoration: BoxDecoration(
                                        //         color: ColorConstant
                                        //             .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHome();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_home".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSleep();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA700
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_sleep".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapFrame1095();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_frame_1095".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialViedoUpload();
                            },
                            child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                    // color: ColorConstant.whiteA7/00
                                    ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_viedo_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfile();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_social_profile".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileLove();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileMessage();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialGroup();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_social_group".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialGroup1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_social_group".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialRequestedGroup();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_requeste".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileMessage1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration/(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileMessage2();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileFriends();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile3".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialProfileFollowers();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_social_profile4".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapFoodTracker();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_food_tracker".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapFoodTracker1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_food_tracker".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHome1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_home".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapFood();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_food".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapRecipe();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_recipe".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapJournal();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_journal".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapQuestionoftheDay();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_question_of_the".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapTherapy();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_therapy".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConstant
                                              //     .bluegray400
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapCurrentBalanceRecurringCharges();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "msg_current_balance".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapAddbank();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_add_bank".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapInvestments();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_investments".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          decoration: BoxDecoration(
                                              // color: ColorConst
                                              // ant
                                              //     .bluegray400)
                                              ))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapNews();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_news".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapNews1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_news".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapMeditation();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_meditation".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize
                                                //         : getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(5.00)),
                                        // decoration: BoxDecoration(
                                        //     color: ColorConstant
                                        //         .bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHealthyHabits();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                "lbl_healthy_habits".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleregular20
                                                //     .copyWith(
                                                //     fontSize: getFontSize(
                                                //         20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                              )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHealthyHabits1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                  "lbl_healthy_habits".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapReligion();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_religion".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHome2();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_home".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHome3();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_home".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapHome4();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_home".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey();
                            },
                            child: Container(
                                width: size.width,
                                // ecoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(

                                                  ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey2();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey3();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey4();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey5();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey6();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey7();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey8();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey9();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey10();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey11();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey12();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize
                                                  ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey13();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey14();
                              // style: AppStyle
                              //     .textStyleregular20
                              //     .copyWith(
                              //     fontSize: getFontSize(
                              //         20))
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey15();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSurvey16();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_survey".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapLogoIntro();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_logo_intro".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapWorkouts6();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text("lbl_workouts".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapSocialViedoUpload1();
                            },
                            child: Container(
                                width: size.width,
                                // decoration: BoxDecoration(
                                //     color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(20.00),
                                                  top: getVerticalSize(10.00),
                                                  right:
                                                      getHorizontalSize(20.00),
                                                  bottom:
                                                      getVerticalSize(10.00)),
                                              child: Text(
                                                  "msg_social_viedo_up".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleregular20
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(
                                                  //             20))
                                              ))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          margin: EdgeInsets.only(
                                              top: getVerticalSize(5.00)),
                                          // decoration: BoxDecoration(
                                          //     color: ColorConstant.bluegray400)
                                      )
                                    ])))
                      ])))))
        ]))));
  }

  onTapWorkout() {
    // Get.toNamed(AppRoutes.workoutScreen);
  }

  onTapWorkouts() {
    // Get.toNamed(AppRoutes.workoutsScreen);
  }

  onTapProgress() {
    // Get.toNamed(AppRoutes.progressScreen);
  }

  onTapCreateWorkout() {
    // Get.toNamed(AppRoutes.createWorkoutScreen);
  }

  onTapCreateWorkout1() {
    // Get.toNamed(AppRoutes.createWorkout1Screen);
  }

  onTapCreateWorkout2() {
    // Get.toNamed(AppRoutes.createWorkout2Screen);
  }

  onTapCreateWorkout3() {
    // Get.toNamed(AppRoutes.createWorkout3Screen);
  }

  onTapCreateWorkout4() {
    // Get.toNamed(AppRoutes.createWorkout4Screen);
  }

  onTapSocial() {
    // Get.toNamed(AppRoutes.socialScreen);
  }

  onTaptf() {
    // Get.toNamed(AppRoutes.k9Screen);
  }

  onTapNEARYOU() {
    // Get.toNamed(AppRoutes.nearYouScreen);
  }

  onTapSearch() {
    // Get.toNamed(AppRoutes.searchScreen);
  }

  onTapSearch1() {
    // Get.toNamed(AppRoutes.search1Screen);
  }

  onTapCreateWorkout5() {
    // Get.toNamed(AppRoutes.createWorkout5Screen);
  }

  onTapWorkouts1() {
    // Get.toNamed(AppRoutes.workouts1Screen);
  }

  onTapWorkouts2() {
    // Get.toNamed(AppRoutes.workouts2Screen);
  }

  onTapWorkouts3() {
    // Get.toNamed(AppRoutes.workouts3Screen);
  }

  onTapWorkouts4() {
    // Get.toNamed(AppRoutes.workouts4Screen);
  }

  onTapWorkouts5() {
    // Get.toNamed(AppRoutes.workouts5Screen);
  }

  onTapSignin() {
    // Get.toNamed(AppRoutes.signInScreen);
  }

  onTapSignup() {
    // Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapHome() {
    // Get.toNamed(AppRoutes.homeScreen);
  }

  onTapSleep() {
    // Get.toNamed(AppRoutes.sleepScreen);
  }

  onTapFrame1095() {
    // Get.toNamed(AppRoutes.frame1095Screen);
  }

  onTapSocialViedoUpload() {
    // Get.toNamed(AppRoutes.socialViedoUploadScreen);
  }

  onTapSocialProfile() {
    // Get.toNamed(AppRoutes.socialProfileScreen);
  }

  onTapSocialProfileLove() {
    // Get.toNamed(AppRoutes.socialProfileLoveScreen);
  }

  onTapSocialProfileMessage() {
    // Get.toNamed(AppRoutes.socialProfileMessageScreen);
  }

  onTapSocialGroup() {
    // Get.toNamed(AppRoutes.socialGroupScreen);
  }

  onTapSocialGroup1() {
    // Get.toNamed(AppRoutes.socialGroup1Screen);
  }

  onTapSocialRequestedGroup() {
    // Get.toNamed(AppRoutes.socialRequestedGroupScreen);
  }

  onTapSocialProfileMessage1() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }

  onTapSocialProfileMessage2() {
    // Get.toNamed(AppRoutes.socialProfileMessage2Screen);
  }

  onTapSocialProfileFriends() {
    // Get.toNamed(AppRoutes.socialProfileFriendsScreen);
  }

  onTapSocialProfileFollowers() {
    // Get.toNamed(AppRoutes.socialProfileFollowersScreen);
  }

  onTapFoodTracker() {
    // Get.toNamed(AppRoutes.foodTrackerScreen);
  }

  onTapFoodTracker1() {
    // Get.toNamed(AppRoutes.foodTracker1Screen);
  }

  onTapHome1() {
    // Get.toNamed(AppRoutes.home1Screen);
  }

  onTapFood() {
    // Get.toNamed(AppRoutes.foodScreen);
  }

  onTapRecipe() {
    // Get.toNamed(AppRoutes.recipeScreen);
  }

  onTapJournal() {
    // Get.toNamed(AppRoutes.journalScreen);
  }

  onTapQuestionoftheDay() {
    // Get.toNamed(AppRoutes.questionOfTheDayScreen);
  }

  onTapTherapy() {
    // Get.toNamed(AppRoutes.therapyScreen);
  }

  onTapCurrentBalanceRecurringCharges() {
    // Get.toNamed(AppRoutes.currentBalanceRecurringChargesScreen);
  }

  onTapAddbank() {
    // Get.toNamed(AppRoutes.addBankScreen);
  }

  onTapInvestments() {
    // Get.toNamed(AppRoutes.investmentsScreen);
  }

  onTapNews() {
    // Get.toNamed(AppRoutes.newsScreen);
  }

  onTapNews1() {
    // Get.toNamed(AppRoutes.news1Screen);
  }

  onTapMeditation() {
    // Get.toNamed(AppRoutes.meditationScreen);
  }

  onTapHealthyHabits() {
    // Get.toNamed(AppRoutes.healthyHabitsScreen);
  }

  onTapHealthyHabits1() {
    // Get.toNamed(AppRoutes.healthyHabits1Screen);
  }

  onTapReligion() {
    // Get.toNamed(AppRoutes.religionScreen);
  }

  onTapHome2() {
    // Get.toNamed(AppRoutes.home2Screen);
  }

  onTapHome3() {
    // Get.toNamed(AppRoutes.home3Screen);
  }

  onTapHome4() {
    // Get.toNamed(AppRoutes.home4Screen);
  }

  onTapSurvey() {
    // Get.toNamed(AppRoutes.surveyScreen);
  }

  onTapSurvey1() {
    // Get.toNamed(AppRoutes.survey1Screen);
  }

  onTapSurvey2() {
    // Get.toNamed(AppRoutes.survey2Screen);
  }

  onTapSurvey3() {
    // Get.toNamed(AppRoutes.survey3Screen);
  }

  onTapSurvey4() {
    // Get.toNamed(AppRoutes.survey4Screen);
  }

  onTapSurvey5() {
    // Get.toNamed(AppRoutes.survey5Screen);
  }

  onTapSurvey6() {
    // Get.toNamed(AppRoutes.survey6Screen);
  }

  onTapSurvey7() {
    // Get.toNamed(AppRoutes.survey7Screen);
  }

  onTapSurvey8() {
    // Get.toNamed(AppRoutes.survey8Screen);
  }

  onTapSurvey9() {
    // Get.toNamed(AppRoutes.survey9Screen);
  }

  onTapSurvey10() {
    // Get.toNamed(AppRoutes.survey10Screen);
  }

  onTapSurvey11() {
    // Get.toNamed(AppRoutes.survey11Screen);
  }

  onTapSurvey12() {
    // Get.toNamed(AppRoutes.survey12Screen);
  }

  onTapSurvey13() {
    // Get.toNamed(AppRoutes.survey13Screen);
  }

  onTapSurvey14() {
    // Get.toNamed(AppRoutes.survey14Screen);
  }

  onTapSurvey15() {
    // Get.toNamed(AppRoutes.survey15Screen);
  }

  onTapSurvey16() {
    //Get.toNamed(AppRoutes.survey16Screen);
  }

  onTapLogoIntro() {
    // Get.toNamed(AppRoutes.logoIntroScreen);
  }

  onTapWorkouts6() {
    //Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapSocialViedoUpload1() {
    //Get.toNamed(AppRoutes.socialViedoUpload2Screen);
  }
}
