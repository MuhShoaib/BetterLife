import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/create_workout4_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateWorkout4Screen extends GetWidget<CreateWorkout4Controller> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                margin: EdgeInsets.only(),
                // decoration: BoxDecoration(color: ColorConstant.gray900),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(width: double.infinity,
                          margin: EdgeInsets.only(top: getVerticalSize(5.00)),
                          decoration: BoxDecoration(
                              // color: ColorConstant.gray900,
                              boxShadow: [

                                BoxShadow(
                                    // color: ColorConstant.black90005,
                                    spreadRadius: getHorizontalSize(2.00),
                                    blurRadius: getHorizontalSize(2.00),
                                    offset: Offset(0, 4))
                              ]),
                          child: Column(mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.centerLeft,
                                    child: Container(width: size.width,
                                        margin: EdgeInsets.only(
                                            top: getVerticalSize(19.00),
                                            bottom: getVerticalSize(37.00)),
                                        child: Padding(padding: EdgeInsets.only(
                                            left: getHorizontalSize(30.00),
                                            right: getHorizontalSize(30.29)),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                mainAxisSize: MainAxisSize.max,
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
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              2.00),
                                                          bottom: getVerticalSize(
                                                              2.00)),
                                                      child: Text(
                                                          "lbl_bookmarks".tr,
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
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              2.00),
                                                          bottom: getVerticalSize(
                                                              0.29)),
                                                      child: Container(
                                                          height: getSize(
                                                              18.71),
                                                          width: getSize(18.71),
                                                          child: SvgPicture
                                                              .asset(
                                                              ImageConstant
                                                                  .imgGroup981,
                                                              fit: BoxFit
                                                                  .fill)))
                                                ]))))
                              ])),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          right: getHorizontalSize(30.00)),
                          child: Text(
                              "lbl_workout".tr, overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              // style: AppStyle.textStyleInterbold14.copyWith(
                              //     fontSize: getFontSize(14))
                          )),
                      Align(alignment: Alignment.center,
                          child: GestureDetector(onTap: () {
                            onTapGroup486();
                          },
                              child: Container(margin: EdgeInsets.only(
                                  left: getHorizontalSize(30.00),
                                  top: getVerticalSize(10.00),
                                  right: getHorizontalSize(30.00)),
                                  decoration: BoxDecoration(
                                      // color: ColorConstant
                                      // .bluegray900,
                                      borderRadius: BorderRadius
                                      .circular(getHorizontalSize(5.00))),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(height: getSize(50.00),
                                            width: getSize(50.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(10.00),
                                                bottom: getVerticalSize(10.00)),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(alignment: Alignment
                                                      .centerLeft,
                                                      child: ClipRRect(
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  26.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgUnsplashe3weha1,
                                                              height: getSize(
                                                                  50.00),
                                                              width: getSize(
                                                                  50.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                  Align(alignment: Alignment
                                                      .center,
                                                      child: Padding(
                                                          padding: EdgeInsets
                                                              .only(
                                                              left: getHorizontalSize(
                                                                  16.00),
                                                              top: getVerticalSize(
                                                                  16.00),
                                                              right: getHorizontalSize(
                                                                  16.00),
                                                              bottom: getVerticalSize(
                                                                  16.00)),
                                                          child: Container(
                                                              height: getSize(
                                                                  18.00),
                                                              width: getSize(
                                                                  18.00),
                                                              child: SvgPicture
                                                                  .asset(
                                                                  ImageConstant
                                                                      .imgGroup976,
                                                                  fit: BoxFit
                                                                      .fill))))
                                                ])),
                                        Padding(padding: EdgeInsets.only(
                                            left: getHorizontalSize(10.00),
                                            top: getVerticalSize(19.00),
                                            right: getHorizontalSize(138.00),
                                            bottom: getVerticalSize(19.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: getHorizontalSize(
                                                              10.00)),
                                                      child: Text(
                                                          "lbl_deadlift".tr
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          // style: AppStyle
                                                          //     .textStyleInterbold12
                                                          //     .copyWith(
                                                          //     fontSize: getFontSize(
                                                          //         12))
                                                      )),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          107.00),
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              5.00)),
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize: MainAxisSize
                                                              .max,
                                                          children: [
                                                            Text("lbl_90_mins"
                                                                .tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                // style: AppStyle
                                                                //     .textStyleIntermedium10
                                                                //     .copyWith(
                                                                //     fontSize: getFontSize(
                                                                //         10))
                                                            ),
                                                            Text(
                                                                "lbl_resistance"
                                                                    .tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                // style: AppStyle
                                                                //     .textStyleIntermedium10
                                                                //     .copyWith(
                                                                //     fontSize: getFontSize(
                                                                //         10))
                                                            )
                                                          ]))
                                                ]))
                                      ])))),
                      Container(height: getVerticalSize(109.00),
                          width: size.width,
                          margin: EdgeInsets.only(top: getVerticalSize(506.00)),
                          decoration: BoxDecoration(gradient: LinearGradient(
                              begin: Alignment(0.5, -3.0616171314629196e-17),
                              end: Alignment(0.5, 0.9999999999999999),
                              colors: [
                                // ColorConstant.gray90000,
                                // ColorConstant.gray900
                              ])))
                    ]))))));
  }

  onTapGroup486() {
    // Get.toNamed(AppRoutes.workouts1Screen);
  }
}
