import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/k9_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class K9Screen extends GetWidget<K9Controller> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(children: [
      Expanded(child: Container(height: getVerticalSize(794.00),
          width: size.width,
          margin: EdgeInsets.only(),
          child: Stack(alignment: Alignment.centerLeft,
              children: [
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5.00)),
                        child: Image.asset(ImageConstant.imgUnsplashpegswn,
                            height: getVerticalSize(789.00),
                            width: getHorizontalSize(375.00),
                            fit: BoxFit.fill))),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(5.00)),
                        child: Column(mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Container(width: double.infinity,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(begin: Alignment(
                                        0.4999999493360541,
                                        -3.061614587526651e-17),
                                        end: Alignment(0.4999999493360547,
                                            0.8499999645352379),
                                        colors: [
                                          // ColorConstant.black900A6,
                                          // ColorConstant.black90000
                                        ])),
                                child: Column(mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(alignment: Alignment.centerLeft,
                                          child: Container(width: size.width,
                                              margin: EdgeInsets.only(
                                                  top: getVerticalSize(20.00),
                                                  bottom: getVerticalSize(
                                                      55.00)),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          30.00),
                                                      right: getHorizontalSize(
                                                          116.00)),
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
                                                            child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .center,
                                                                mainAxisSize: MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Text(
                                                                      "lbl_social"
                                                                          .tr,
                                                                      overflow: TextOverflow
                                                                          .ellipsis,
                                                                      textAlign: TextAlign
                                                                          .left,
                                                                      // style: AppStyle
                                                                      //     .textStyleIntersemibold142
                                                                      //     .copyWith(
                                                                      //     fontSize: getFontSize(
                                                                      //         14),
                                                                      //     letterSpacing: 0.70)
                                                                  ),
                                                                  Container(
                                                                      height: getVerticalSize(
                                                                          16.00),
                                                                      width: getHorizontalSize(
                                                                          2.00),
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                          left: getHorizontalSize(
                                                                              10.00),
                                                                          top: getVerticalSize(
                                                                              0.50),
                                                                          bottom: getVerticalSize(
                                                                              0.50)),
                                                                      decoration: BoxDecoration(
                                                                          // color: ColorConstant
                                                                          //     .whiteA700
                                                                      )),
                                                                  GestureDetector(
                                                                      onTap: () {
                                                                        onTapTxtNearyou();
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  8.00),
                                                                              top: getVerticalSize(
                                                                                  1.00),
                                                                              bottom: getVerticalSize(
                                                                                  1.00)),
                                                                          child: Text(
                                                                              "lbl_near_you"
                                                                                  .tr,
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              // style: AppStyle
                                                                              //     .textStyleIntersemibold121
                                                                              //     .copyWith(
                                                                              //     fontSize: getFontSize(
                                                                              //         12),
                                                                              //     letterSpacing: 0.60)
                                                                          )))
                                                                ]))
                                                      ]))))
                                    ])), Expanded(child: SingleChildScrollView(
                                padding: EdgeInsets.only(
                                    top: getVerticalSize(278.00)),
                                child: Container(
                                    height: getVerticalSize(415.00),
                                    width: size.width,
                                    child: Stack(alignment: Alignment.topCenter,
                                        children: [
                                          Align(alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: getVerticalSize(
                                                      166.00),
                                                  width: size.width,
                                                  margin: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          10.00)),
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          begin: Alignment(
                                                              0.4999999493360541,
                                                              -3.061614587526651e-17),
                                                          end: Alignment(
                                                              0.4999999493360547,
                                                              0.8499999645352379),
                                                          colors: [
                                                            // ColorConstant
                                                            //     .black900,
                                                            // ColorConstant
                                                            //     .black90000
                                                          ])))),
                                          Align(alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          20.00),
                                                      right: getHorizontalSize(
                                                          20.00),
                                                      bottom: getVerticalSize(
                                                          10.00)),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .end,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                left: getHorizontalSize(
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
                                                                      height: getSize(
                                                                          40.00),
                                                                      width: getSize(
                                                                          40.00),
                                                                      child: Stack(
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment
                                                                                    .centerLeft,
                                                                                child: ClipRRect(
                                                                                    borderRadius: BorderRadius
                                                                                        .circular(
                                                                                        getSize(
                                                                                            20.00)),
                                                                                    child: Image
                                                                                        .asset(
                                                                                        ImageConstant
                                                                                            .imgUnsplash6w4f62,
                                                                                        height: getSize(
                                                                                            40.00),
                                                                                        width: getSize(
                                                                                            40.00),
                                                                                        fit: BoxFit
                                                                                            .fill))),
                                                                            Align(
                                                                                alignment: Alignment
                                                                                    .bottomRight,
                                                                                child: Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        left: getHorizontalSize(
                                                                                            10.00),
                                                                                        top: getVerticalSize(
                                                                                            10.00)),
                                                                                    child: Container(
                                                                                        height: getSize(
                                                                                            13.33),
                                                                                        width: getSize(
                                                                                            13.33),
                                                                                        child: SvgPicture
                                                                                            .asset(
                                                                                            ImageConstant
                                                                                                .imgFrame1048,
                                                                                            fit: BoxFit
                                                                                                .fill))))
                                                                          ])),
                                                                  Align(
                                                                      alignment: Alignment
                                                                          .center,
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  3.00),
                                                                              top: getVerticalSize(
                                                                                  30.00),
                                                                              right: getHorizontalSize(
                                                                                  3.00)),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize
                                                                                  .min,
                                                                              crossAxisAlignment: CrossAxisAlignment
                                                                                  .center,
                                                                              mainAxisAlignment: MainAxisAlignment
                                                                                  .start,
                                                                              children: [
                                                                                Align(
                                                                                    alignment: Alignment
                                                                                        .centerLeft,
                                                                                    child: Container(
                                                                                        height: getVerticalSize(
                                                                                            30.00),
                                                                                        width: getHorizontalSize(
                                                                                            34.00),
                                                                                        child: SvgPicture
                                                                                            .asset(
                                                                                            ImageConstant
                                                                                                .imgVector,
                                                                                            fit: BoxFit
                                                                                                .fill))),
                                                                                Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        left: getHorizontalSize(
                                                                                            10.50),
                                                                                        top: getVerticalSize(
                                                                                            5.00),
                                                                                        right: getHorizontalSize(
                                                                                            10.50)),
                                                                                    child: Text(
                                                                                        "lbl_like"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .right,
                                                                                        // style: AppStyle
                                                                                        //     .textStyleIntersemibold6
                                                                                        //     .copyWith(
                                                                                        //     fontSize: getFontSize(
                                                                                        //         6))
                                                                                    ))
                                                                              ]))),
                                                                  Align(
                                                                      alignment: Alignment
                                                                          .center,
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  3.50),
                                                                              top: getVerticalSize(
                                                                                  30.00),
                                                                              right: getHorizontalSize(
                                                                                  3.50)),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize
                                                                                  .min,
                                                                              crossAxisAlignment: CrossAxisAlignment
                                                                                  .start,
                                                                              mainAxisAlignment: MainAxisAlignment
                                                                                  .start,
                                                                              children: [
                                                                                Align(
                                                                                    alignment: Alignment
                                                                                        .center,
                                                                                    child: GestureDetector(
                                                                                        onTap: () {
                                                                                          onTapImgVector();
                                                                                        },
                                                                                        child: Padding(
                                                                                            padding: EdgeInsets
                                                                                                .only(
                                                                                                left: getHorizontalSize(
                                                                                                    1.50),
                                                                                                right: getHorizontalSize(
                                                                                                    1.50)),
                                                                                            child: Container(
                                                                                                height: getSize(
                                                                                                    30.00),
                                                                                                width: getSize(
                                                                                                    30.00),
                                                                                                child: SvgPicture
                                                                                                    .asset(
                                                                                                    ImageConstant
                                                                                                        .imgVector1,
                                                                                                    fit: BoxFit
                                                                                                        .fill))))),
                                                                                Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        top: getVerticalSize(
                                                                                            5.00)),
                                                                                    child: Text(
                                                                                        "lbl_comment"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .right,
                                                                                        // style: AppStyle
                                                                                        //     .textStyleIntersemibold6
                                                                                        //     .copyWith(
                                                                                        //     fontSize: getFontSize(
                                                                                        //         6)
                                                                                        // )
                                                                                    ))
                                                                              ]))),
                                                                  Align(
                                                                      alignment: Alignment
                                                                          .center,
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  5.00),
                                                                              top: getVerticalSize(
                                                                                  30.00),
                                                                              right: getHorizontalSize(
                                                                                  5.00)),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize
                                                                                  .min,
                                                                              crossAxisAlignment: CrossAxisAlignment
                                                                                  .start,
                                                                              mainAxisAlignment: MainAxisAlignment
                                                                                  .start,
                                                                              children: [
                                                                                Container(
                                                                                    height: getSize(
                                                                                        30.00),
                                                                                    width: getSize(
                                                                                        30.00),
                                                                                    child: SvgPicture
                                                                                        .asset(
                                                                                        ImageConstant
                                                                                            .imgVector2,
                                                                                        fit: BoxFit
                                                                                            .fill)),
                                                                                Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        left: getHorizontalSize(
                                                                                            4.50),
                                                                                        top: getVerticalSize(
                                                                                            5.00),
                                                                                        right: getHorizontalSize(
                                                                                            4.50)),
                                                                                    child: Text(
                                                                                        "lbl_share"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .right,
                                                                                        // style: AppStyle
                                                                                        //     .textStyleIntersemibold6
                                                                                        //     .copyWith(
                                                                                        //     fontSize: getFontSize(
                                                                                        //         6))
                                                                                    ))
                                                                              ])))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: getVerticalSize(
                                                                        10.00)),
                                                                child: Column(
                                                                    mainAxisSize: MainAxisSize
                                                                        .min,
                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                        .start,
                                                                    mainAxisAlignment: MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              right: getHorizontalSize(
                                                                                  10.00)),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment
                                                                                  .start,
                                                                              crossAxisAlignment: CrossAxisAlignment
                                                                                  .center,
                                                                              mainAxisSize: MainAxisSize
                                                                                  .min,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        top: getVerticalSize(
                                                                                            5.00),
                                                                                        bottom: getVerticalSize(
                                                                                            5.00)),
                                                                                    child: Text(
                                                                                        "lbl_rajumullah"
                                                                                            .tr,
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign: TextAlign
                                                                                            .right,
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
                                                                                            15.00)),
                                                                                    child: Container(
                                                                                        alignment: Alignment
                                                                                            .center,
                                                                                        height: getVerticalSize(
                                                                                            25.00),
                                                                                        width: getHorizontalSize(
                                                                                            75.00),
                                                                                        // decoration: AppDecoration
                                                                                        //     .textStyleIntermedium101,
                                                                                        child: Text(
                                                                                            "lbl_following"
                                                                                                .tr,
                                                                                            textAlign: TextAlign
                                                                                                .left,
                                                                                            // style: AppStyle
                                                                                            //     .textStyleIntermedium101
                                                                                            //     .copyWith(
                                                                                            //     fontSize: getFontSize(
                                                                                            //         10))
                                                                                        )))
                                                                              ])),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              335.00),
                                                                          margin: EdgeInsets
                                                                              .only(
                                                                              top: getVerticalSize(
                                                                                  5.00)),
                                                                          child: Text(
                                                                              "msg_lorem_ipsum_dol"
                                                                                  .tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              // style: AppStyle
                                                                              //     .textStyleInterregular10
                                                                              //     .copyWith(
                                                                              //     fontSize: getFontSize(
                                                                              //         10))
                                                                          ))
                                                                    ])))
                                                      ])))
                                        ]))))
                            ])))
              ]))),
      Container(width: double.infinity,
          decoration: BoxDecoration(
              // color: ColorConstant.gray900,
              boxShadow: [
                BoxShadow(
                    // color: ColorConstant.black9001a,
                    spreadRadius: getHorizontalSize(2.00),
                    blurRadius: getHorizontalSize(2.00),
                    offset: Offset(0, -3.1896615028381348))
              ]),
          child: Column(mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(alignment: Alignment.centerLeft,
                    child: Container(height: getVerticalSize(79.04),
                        width: size.width,
                        child: Stack(alignment: Alignment.topCenter,
                            children: [
                              Align(alignment: Alignment.bottomLeft,
                                  child: Padding(padding: EdgeInsets.only(
                                      top: getVerticalSize(10.00)),
                                      child: Container(
                                          height: getVerticalSize(60.60),
                                          width: getHorizontalSize(375.00),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgSubtract1,
                                              fit: BoxFit.fill)))),
                              Align(alignment: Alignment.topCenter,
                                  child: Padding(padding: EdgeInsets.only(
                                      bottom: getVerticalSize(10.00)),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(padding: EdgeInsets.only(
                                                top: getVerticalSize(39.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        20.00),
                                                    width: getHorizontalSize(
                                                        21.14),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgVector3,
                                                        fit: BoxFit.fill))),
                                            GestureDetector(onTap: () {
                                              onTapImgGroup651();
                                            },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            39.00)),
                                                    child: Container(
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup651,
                                                            fit: BoxFit
                                                                .fill)))),
                                            Container(height: getSize(50.03),
                                                width: getSize(50.03),
                                                margin: EdgeInsets.only(
                                                    bottom: getVerticalSize(
                                                        8.97)),
                                                child: FloatingActionButton(
                                                    // backgroundColor: ColorConstant
                                                    //     .tealA400,
                                                    onPressed: () {},
                                                    child: Container(
                                                        height: getSize(50.03),
                                                        width: getSize(50.03),
                                                        padding: EdgeInsets.all(
                                                            getSize(10)),
                                                        decoration: BoxDecoration(
                                                            // color: ColorConstant
                                                            //     .tealA400,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  // color: ColorConstant
                                                                  //     .tealA4004d,
                                                                  spreadRadius: getHorizontalSize(
                                                                      2.00),
                                                                  blurRadius: getHorizontalSize(
                                                                      2.00),
                                                                  offset: Offset(
                                                                      0, 2))
                                                            ]),
                                                        child: Container(
                                                            height: getVerticalSize(
                                                                25.02),
                                                            width: getHorizontalSize(
                                                                25.02),
                                                            child: SvgPicture
                                                                .asset(
                                                                ImageConstant
                                                                    .imgGroup34))))),
                                            GestureDetector(onTap: () {
                                              onTapImgGroup989();
                                            },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            39.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width: getHorizontalSize(
                                                            20.24),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup989,
                                                            fit: BoxFit
                                                                .fill)))),
                                            GestureDetector(onTap: () {
                                              onTapImgGroup650();
                                            },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            39.00)),
                                                    child: Container(
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup650,
                                                            fit: BoxFit.fill))))
                                          ])))
                            ])))
              ]))
    ])));
  }

  onTapTxtNearyou() {
    // Get.toNamed(AppRoutes.nearYouScreen);
  }

  onTapImgVector() {
    // Get.toNamed(AppRoutes.frame1095Screen);
  }

  onTapImgGroup651() {
    // Get.toNamed(AppRoutes.search1Screen);
  }

  onTapImgGroup989() {
    // Get.toNamed(AppRoutes.socialProfileMessageScreen);
  }

  onTapImgGroup650() {
    // Get.toNamed(AppRoutes.socialProfileScreen);
  }
}
