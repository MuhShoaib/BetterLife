import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import 'controller/search_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                margin: EdgeInsets.only(),
                decoration: BoxDecoration(
                    // color: ColorConstant.gray900
                ),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(alignment: Alignment.centerLeft,
                          child: Container(height: getVerticalSize(57.00),
                              width: size.width,
                              margin: EdgeInsets.only(
                                  top: getVerticalSize(5.00)),
                              child: Stack(alignment: Alignment.bottomRight,
                                  children: [Align(alignment: Alignment
                                      .centerLeft,
                                      child: Container(
                                          height: getVerticalSize(57.00),
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(
                                                      0.4999999493360541,
                                                      -3.061614587526651e-17),
                                                  end: Alignment(
                                                      0.4999999493360547,
                                                      0.8499999645352379),
                                                  colors: [
                                                    // ColorConstant.black900,
                                                    // ColorConstant.black90000
                                                  ])),
                                          child: Stack(children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgFrame262();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left: getHorizontalSize(
                                                                30.00),
                                                            top: getVerticalSize(
                                                                16.00),
                                                            right: getHorizontalSize(
                                                                30.00),
                                                            bottom: getVerticalSize(
                                                                16.00)),
                                                        child: Container(
                                                            height: getVerticalSize(
                                                                21.00),
                                                            width: getHorizontalSize(
                                                                24.00),
                                                            child: SvgPicture
                                                                .asset(
                                                                ImageConstant
                                                                    .imgFrame2621,
                                                                fit: BoxFit
                                                                    .fill)))))
                                          ]))), Align(alignment: Alignment
                                      .bottomRight,
                                      child: Container(width: size.width,
                                          margin: EdgeInsets.only(
                                              left: getHorizontalSize(30.00),
                                              top: getVerticalSize(17.00),
                                              right: getHorizontalSize(30.00),
                                              bottom: getVerticalSize(17.00)),
                                          child: Container(
                                              height: getVerticalSize(20.00),
                                              width: getHorizontalSize(268.00),
                                              child: TextFormField(
                                                  controller: controller
                                                      .group48Controller,
                                                  decoration: InputDecoration(
                                                      hintText: "lbl_search".tr,
                                                      // hintStyle: AppStyle
                                                      //     .textStyleInterregular10
                                                      //     .copyWith(
                                                      //     fontSize: getFontSize(
                                                      //         10.0),
                                                      //     color: ColorConstant
                                                      //         .whiteA700),
                                                      enabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              // color: ColorConstant
                                                              //     .whiteA70019,
                                                              width: 1)),
                                                      focusedBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              // color: ColorConstant
                                                              //     .whiteA70019,
                                                              width: 1)),
                                                      prefixIcon: Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              left: getHorizontalSize(
                                                                  5.00),
                                                              right: getHorizontalSize(
                                                                  10.00)),
                                                          child: Container(
                                                              height: getSize(
                                                                  14.00),
                                                              width: getSize(
                                                                  14.00),
                                                              child: SvgPicture
                                                                  .asset(
                                                                  ImageConstant
                                                                      .imgVector4,
                                                                  fit: BoxFit
                                                                      .contain))),
                                                      prefixIconConstraints: BoxConstraints(
                                                          minWidth: getSize(
                                                              14.00),
                                                          minHeight: getSize(
                                                              14.00)),
                                                      isDense: true,
                                                      contentPadding: EdgeInsets
                                                          .only(
                                                          top: getVerticalSize(
                                                              0.86),
                                                          bottom: getVerticalSize(
                                                              6.86))),
                                                  style: TextStyle(
                                                      // color: ColorConstant
                                                      //     .whiteA700,
                                                      fontSize: getFontSize(
                                                          10.0),
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight
                                                          .w400)))))
                                  ]))),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          right: getHorizontalSize(30.00),
                          bottom: getVerticalSize(20.00)),
                          child: Column(mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(height: getVerticalSize(40.00),
                                    width: getHorizontalSize(315.00),
                                    child: Stack(alignment: Alignment
                                        .centerRight,
                                        children: [
                                          Align(alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Container(
                                                      alignment: Alignment
                                                          .center,
                                                      height: getVerticalSize(
                                                          40.00),
                                                      width: getHorizontalSize(
                                                          158.00),
                                                      // decoration: AppDecoration
                                                      //     .textStyleIntersemibold123,
                                                      child: Text(
                                                          "lbl_users".tr,
                                                          textAlign: TextAlign
                                                              .left,
                                                          // style: AppStyle
                                                          //     .textStyleIntersemibold123
                                                          //     .copyWith(
                                                          //     fontSize: getFontSize(
                                                          //         12))
                                                      )))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          10.00)),
                                                  child: Container(
                                                      alignment: Alignment
                                                          .center,
                                                      height: getVerticalSize(
                                                          40.00),
                                                      width: getHorizontalSize(
                                                          158.00),
                                                      // decoration: AppDecoration
                                                      //     .textStyleIntersemibold124,
                                                      child: Text(
                                                          "lbl_topics".tr,
                                                          textAlign: TextAlign
                                                              .left,
                                                          // style: AppStyle
                                                          //     .textStyleIntersemibold124
                                                          //     .copyWith(
                                                          //     fontSize: getFontSize(
                                                          //         12))
                                                      ))))
                                        ])),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(20.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("lbl_motivation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    )),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(15.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("lbl_business".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    )),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(15.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("msg_health_welln".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    )),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(15.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("lbl_fitness".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    )),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(15.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("lbl_sports".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    )),
                                Padding(padding: EdgeInsets.only(
                                    top: getVerticalSize(15.00),
                                    right: getHorizontalSize(10.00)),
                                    child: Text("lbl_relaxation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleIntersemibold14
                                        //     .copyWith(
                                        //     fontSize: getFontSize(14))
                                    ))
                              ]))
                    ]))))));
  }

  onTapImgFrame262() {
    // Get.toNamed(AppRoutes.socialScreen);
  }
}
