import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';

import '../../core/widgets/appbar_with_back.dart';
import '../core/utils/image_constant.dart';
import 'controller/healthy_habits_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthyHabitsScreen extends GetWidget<HealthyHabitsController> {
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
                        // decoration: BoxDecoration(color: ColorConstant.gray900),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //AppBarWithBack(),
                              HomeAppBar(),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(2.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(30.00),
                                                right: getHorizontalSize(10.00)),
                                            child: Text("msg_12_habits_of_su".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:TextStyle(color:Colors.white,fontSize: 18)
                                                // style: AppStyle.textStyleIntermedium18
                                                //     .copyWith(
                                                //         fontSize: getFontSize(18))
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(10.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapGroup1420();
                                                      },
                                                      child: Container(
                                                          decoration: BoxDecoration(
                                                            color:Colors.blueGrey.shade900,

                                                              // color: ColorConstant
                                                              //     .whiteA70019,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    // color: ColorConstant
                                                                    //     .black90005,
                                                                    spreadRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    blurRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    offset: Offset(0, 4))
                                                              ]),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize.max,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            getHorizontalSize(
                                                                                20.00),
                                                                        top:
                                                                            getVerticalSize(
                                                                                24.00),
                                                                        bottom: getVerticalSize(
                                                                            23.00)),
                                                                    child: Text(
                                                                        "lbl_have_breakfast"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextStyle(color: Colors.white,fontSize:12),
                                                                        // style: AppStyle
                                                                        //     .textStyleIntermedium12
                                                                        //     .copyWith(
                                                                        //         fontSize:
                                                                        //             getFontSize(
                                                                        //                 12))
                                                                    )),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top:
                                                                            getVerticalSize(
                                                                                23.00),
                                                                        right:
                                                                            getHorizontalSize(
                                                                                16.00),
                                                                        bottom:
                                                                            getVerticalSize(
                                                                                22.00)),
                                                                    child: Container(
                                                                        height:
                                                                            getVerticalSize(
                                                                                20.00),
                                                                        width:
                                                                            getHorizontalSize(
                                                                                10.00),
                                                                        child: SvgPicture.asset(
                                                                          "assets/images/Vector23.svg",
                                                                            // ImageConstant
                                                                            //     .imgVector23,
                                                                            fit: BoxFit
                                                                                .fill)))
                                                              ]))),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(20.00)),
                                                      decoration: BoxDecoration(
                                                          color:Colors.blueGrey.shade900,

                                                          // color: ColorConstant
                                                          //     .whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              // color: ColorConstant
                                                              //     .black90005,
                                                                spreadRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                blurRadius:
                                                                getHorizontalSize(
                                                                    2.00),
                                                                offset: Offset(0, 4))
                                                          ]),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                    top:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        23.00)),
                                                                child: Text(
                                                                  "lbl_have_breakfast"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: TextStyle(color: Colors.white,fontSize:12),
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                    getVerticalSize(
                                                                        23.00),
                                                                    right:
                                                                    getHorizontalSize(
                                                                        16.00),
                                                                    bottom:
                                                                    getVerticalSize(
                                                                        22.00)),
                                                                child: Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                    width:
                                                                    getHorizontalSize(
                                                                        10.00),
                                                                    child: SvgPicture.asset(
                                                                        "assets/images/Vector23.svg",
                                                                        // ImageConstant
                                                                        //     .imgVector23,
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),

                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "lbl_plan_your_meals"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "msg_drink_plenty_of"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "msg_take_an_exercis"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "lbl_go_offline".tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "msg_learn_something"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorC/onstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "lbl_don_t_smoke".tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector23,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "lbl_sleep_well".tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector232,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "msg_train_your_musc"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector232,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),
                                                  // Container(
                                                  //     margin: EdgeInsets.only(
                                                  //         top: getVerticalSize(20.00)),
                                                  //     decoration: BoxDecoration(
                                                  //         // color:
                                                  //         //     ColorConstant.whiteA70019,
                                                  //         borderRadius:
                                                  //             BorderRadius.circular(
                                                  //                 getHorizontalSize(
                                                  //                     10.00)),
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //               // color: ColorConstant
                                                  //               //     .black90005,
                                                  //               spreadRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               blurRadius:
                                                  //                   getHorizontalSize(
                                                  //                       2.00),
                                                  //               offset: Offset(0, 4))
                                                  //         ]),
                                                  //     child: Row(
                                                  //         mainAxisAlignment:
                                                  //             MainAxisAlignment
                                                  //                 .spaceBetween,
                                                  //         crossAxisAlignment:
                                                  //             CrossAxisAlignment.center,
                                                  //         mainAxisSize: MainAxisSize.max,
                                                  //         children: [
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   left:
                                                  //                       getHorizontalSize(
                                                  //                           20.00),
                                                  //                   top: getVerticalSize(
                                                  //                       24.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           23.00)),
                                                  //               child: Text(
                                                  //                   "lbl_head_outdoors"
                                                  //                       .tr,
                                                  //                   overflow: TextOverflow
                                                  //                       .ellipsis,
                                                  //                   textAlign:
                                                  //                       TextAlign.left,
                                                  //                   // style: AppStyle
                                                  //                   //     .textStyleIntermedium12
                                                  //                   //     .copyWith(
                                                  //                   //         fontSize:
                                                  //                   //             getFontSize(
                                                  //                   //                 12))
                                                  //               )),
                                                  //           Padding(
                                                  //               padding: EdgeInsets.only(
                                                  //                   top: getVerticalSize(
                                                  //                       23.00),
                                                  //                   right:
                                                  //                       getHorizontalSize(
                                                  //                           16.00),
                                                  //                   bottom:
                                                  //                       getVerticalSize(
                                                  //                           22.00)),
                                                  //               child: Container(
                                                  //                   height:
                                                  //                       getVerticalSize(
                                                  //                           20.00),
                                                  //                   width:
                                                  //                       getHorizontalSize(
                                                  //                           10.00),
                                                  //                   child: SvgPicture.asset(
                                                  //                       ImageConstant
                                                  //                           .imgVector232,
                                                  //                       fit:
                                                  //                           BoxFit.fill)))
                                                  //         ])),

                                                  // Padding(
                                                  //     padding: EdgeInsets.only(
                                                  //         top: getVerticalSize(190.00)),
                                                  //     child: Container(
                                                  //         height: getVerticalSize(1.00),
                                                  //         width:
                                                  //             getHorizontalSize(315.00),
                                                  //         child: TextFormField(
                                                  //             controller: controller
                                                  //                 .group178Controller,
                                                  //             decoration: InputDecoration(
                                                  //                 hintText: "msg_keep_your_balan"
                                                  //                     .tr,
                                                  //                 hintStyle: AppStyle
                                                  //                     .textStyleIntermedium12
                                                  //                     .copyWith(
                                                  //                         fontSize:
                                                  //                             getFontSize(
                                                  //                                 12.0),
                                                  //                         color: ColorConstant
                                                  //                             .whiteA700),
                                                  //                 border: OutlineInputBorder(
                                                  //                     borderRadius:
                                                  //                         BorderRadius.circular(getHorizontalSize(10.00)),
                                                  //                     borderSide: BorderSide.none),
                                                  //                 filled: true,
                                                  //                 fillColor: ColorConstant.whiteA70019,
                                                  //                 isDense: true,
                                                  //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(27.00), bottom: getVerticalSize(3.00))),
                                                  //             style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12.0), fontFamily: 'Inter', fontWeight: FontWeight.w500)))),
                                                  // Padding(
                                                  //     padding: EdgeInsets.only(
                                                  //         top: getVerticalSize(275.00)),
                                                  //     child: Container(
                                                  //         height: getVerticalSize(1.00),
                                                  //         width:
                                                  //             getHorizontalSize(315.00),
                                                  //         child: TextFormField(
                                                  //             controller: controller
                                                  //                 .group179Controller,
                                                  //             decoration: InputDecoration(
                                                  //                 hintText:
                                                  //                     "lbl_be_mindful".tr,
                                                  //                 hintStyle: AppStyle
                                                  //                     .textStyleIntermedium12
                                                  //                     .copyWith(
                                                  //                         fontSize:
                                                  //                             getFontSize(
                                                  //                                 12.0),
                                                  //                         color: ColorConstant
                                                  //                             .whiteA700),
                                                  //                 border: OutlineInputBorder(
                                                  //                     borderRadius:
                                                  //                         BorderRadius.circular(getHorizontalSize(10.00)),
                                                  //                     borderSide: BorderSide.none),
                                                  //                 filled: true,
                                                  //                 fillColor: ColorConstant.whiteA70019,
                                                  //                 isDense: true,
                                                  //                 contentPadding: EdgeInsets.only(left: getHorizontalSize(20.00), top: getVerticalSize(27.00), bottom: getVerticalSize(3.00))),
                                                  //             style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12.0), fontFamily: 'Inter', fontWeight: FontWeight.w500))))
                                                ]))
                                      ]))
                            ]))))));
  }

  onTapGroup1420() {
    // Get.toNamed(AppRoutes.healthyHabits1Screen);
  }
}
