import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/sign_up_controller.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
              child: Column(mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(35.00),
                            bottom: getVerticalSize(20.00)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          right: getHorizontalSize(30.00)),
                                      child: Container(
                                          height: getVerticalSize(50.00),
                                          width: getHorizontalSize(48.20),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgGroup4,
                                              fit: BoxFit.fill)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Text("lbl_welcome".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStyleIntersemibold24.copyWith(fontSize: getFontSize(24))
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Text("msg_sign_up_to_cont".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStyleIntermedium18.copyWith(fontSize: getFontSize(18))
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(30.00)),
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
                                                child: Text("lbl_name".tr,
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  // style: AppStyle.textStyleIntermedium145.copyWith(fontSize: getFontSize(14))
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(5.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        20.00),
                                                    width: getHorizontalSize(
                                                        315.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .frame34Controller,
                                                        decoration: InputDecoration(
                                                            hintText: "msg_example_raju_m"
                                                                .tr,
                                                            // hintStyle: AppStyle.textStyleInterregular122
                                                            //     .copyWith(fontSize: getFontSize(12.0), color: ColorConstant.bluegray200),
                                                            enabledBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            focusedBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    1.03),
                                                                bottom: getVerticalSize(
                                                                    6.03))),
                                                        style: TextStyle(
                                                            // color: ColorConstant
                                                            //     .bluegray200,
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight
                                                                .w400))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(20.00),
                                          right: getHorizontalSize(30.00)),
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
                                                child: Text("lbl_email".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    // style: AppStyle
                                                    //     .textStyleIntermedium145
                                                    //     .copyWith(
                                                    //     fontSize: getFontSize(
                                                    //         14))
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(5.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        20.00),
                                                    width: getHorizontalSize(
                                                        315.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .frame34Controller1,
                                                        decoration: InputDecoration(
                                                            hintText: "msg_example_raju43"
                                                                .tr,
                                                            // hintStyle: AppStyle
                                                            //     .textStyleInterregular122
                                                            //     .copyWith(
                                                            //     fontSize: getFontSize(
                                                            //         12.0),
                                                            //     color: ColorConstant
                                                            //         .bluegray200),
                                                            enabledBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            focusedBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    1.03),
                                                                bottom: getVerticalSize(
                                                                    6.03))),
                                                        style: TextStyle(
                                                            // color: ColorConstant
                                                            //     .bluegray200,
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight
                                                                .w400))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(20.00),
                                          right: getHorizontalSize(30.00)),
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
                                                child: Text("lbl_passwoard".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    // style: AppStyle
                                                    //     .textStyleIntermedium145
                                                    //     .copyWith(
                                                    //     fontSize: getFontSize(
                                                    //         14))
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(5.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        20.00),
                                                    width: getHorizontalSize(
                                                        315.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .passwordController,
                                                        decoration: InputDecoration(
                                                            hintText: "lbl2".tr,
                                                            // hintStyle: AppStyle
                                                            //     .textStyleInterregular122
                                                            //     .copyWith(
                                                            //     fontSize: getFontSize(
                                                            //         12.0),
                                                            //     color: ColorConstant
                                                            //         .bluegray200),
                                                            enabledBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            focusedBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    1.03),
                                                                bottom: getVerticalSize(
                                                                    6.03))),
                                                        style: TextStyle(
                                                            // color: ColorConstant
                                                            //     .bluegray200,
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight
                                                                .w400))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(20.00),
                                          right: getHorizontalSize(30.00)),
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
                                                    "msg_confirm_passwoa".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    // style: AppStyle
                                                    //     .textStyleIntermedium145
                                                    //     .copyWith(
                                                    //     fontSize: getFontSize(
                                                    //         14))
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(5.00)),
                                                child: Container(
                                                    height: getVerticalSize(
                                                        20.00),
                                                    width: getHorizontalSize(
                                                        315.00),
                                                    child: TextFormField(
                                                        controller: controller
                                                            .passwordController1,
                                                        decoration: InputDecoration(
                                                            hintText: "lbl2".tr,
                                                            // hintStyle: AppStyle
                                                            //     .textStyleInterregular122
                                                            //     .copyWith(
                                                            //     fontSize: getFontSize(
                                                            //         12.0),
                                                            //     color: ColorConstant
                                                            //         .bluegray200),
                                                            enabledBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            focusedBorder: UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    // color: ColorConstant
                                                                    //     .whiteA700,
                                                                    width: 1)),
                                                            isDense: true,
                                                            contentPadding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    1.03),
                                                                bottom: getVerticalSize(
                                                                    6.03))),
                                                        style: TextStyle(
                                                            // color: ColorConstant
                                                            //     .bluegray200,
                                                            fontSize: getFontSize(
                                                                12.0),
                                                            fontFamily: 'Inter',
                                                            fontWeight: FontWeight
                                                                .w400))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(30.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnSignup();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(50.00),
                                              width: getHorizontalSize(315.00),
                                              // decoration: AppDecoration
                                              //     .textStyleIntermedium143,
                                              child: Text("lbl_sign_up".tr,
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleIntermedium143
                                                  //     .copyWith(
                                                  //     fontSize: getFontSize(
                                                  //         14))
                                              ))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(30.00)),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width: getHorizontalSize(
                                                    139.00),
                                                margin: EdgeInsets.only(
                                                    top: getVerticalSize(11.00),
                                                    bottom: getVerticalSize(
                                                        9.00)),
                                                // decoration: BoxDecoration(
                                                //     color: ColorConstant
                                                //         .whiteA700)
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00)),
                                                child: Text("lbl_or".tr,
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    // style: AppStyle
                                                    //     .textStylePoppinsregular14
                                                    //     .copyWith(
                                                    //     fontSize: getFontSize(
                                                    //         14))
                                                )),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width: getHorizontalSize(
                                                    139.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(11.00),
                                                    bottom: getVerticalSize(
                                                        9.00)),
                                                // decoration: BoxDecoration(
                                                //     color: ColorConstant
                                                //         .whiteA700)
                                            )
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Container(
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(315.00),
                                      child: TextFormField(
                                          controller: controller
                                              .frame207Controller,
                                          decoration: InputDecoration(
                                              hintText: "msg_continue_with_g"
                                                  .tr,
                                              // hintStyle: AppStyle
                                              //     .textStyleInterregular14
                                              //     .copyWith(
                                              //     fontSize: getFontSize(14.0),
                                              //     color: ColorConstant
                                              //         .whiteA700),
                                              border:
                                              OutlineInputBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      getHorizontalSize(10.00)),
                                                  borderSide: BorderSide.none),
                                              prefixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Container(
                                                      height: getSize(25.00),
                                                      width: getSize(25.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup971,
                                                          fit: BoxFit
                                                              .contain))),
                                              prefixIconConstraints: BoxConstraints(
                                                  minWidth: getSize(25.00),
                                                  minHeight: getSize(25.00)),
                                              filled: true,
                                              // fillColor: ColorConstant
                                              //     .whiteA70019,
                                              isDense: true,
                                              contentPadding: EdgeInsets.only(
                                                  top: getVerticalSize(14.21),
                                                  bottom: getVerticalSize(
                                                      13.21))),
                                          style: TextStyle(
                                              // color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(14.0),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400)))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Container(
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(315.00),
                                      child: TextFormField(
                                          controller: controller
                                              .frame205Controller,
                                          decoration: InputDecoration(
                                              hintText: "msg_continue_with_f"
                                                  .tr,
                                              // hintStyle: AppStyle
                                              //     .textStyleInterregular14
                                              //     .copyWith(
                                              //     fontSize: getFontSize(14.0),
                                              //     color: ColorConstant
                                              //         .whiteA700),
                                              border:
                                              OutlineInputBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      getHorizontalSize(10.00)),
                                                  borderSide: BorderSide.none),
                                              prefixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Container(
                                                      height: getSize(25.00),
                                                      width: getSize(25.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup98,
                                                          fit: BoxFit
                                                              .contain))),
                                              prefixIconConstraints: BoxConstraints(
                                                  minWidth: getSize(25.00),
                                                  minHeight: getSize(25.00)),
                                              filled: true,
                                              // fillColor: ColorConstant
                                              //     .whiteA70019,
                                              isDense: true,
                                              contentPadding: EdgeInsets.only(
                                                  top: getVerticalSize(14.21),
                                                  bottom: getVerticalSize(
                                                      13.21))),
                                          style: TextStyle(
                                              // color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(14.0),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean();
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: getHorizontalSize(30.00),
                                              top: getVerticalSize(20.00),
                                              right: getHorizontalSize(30.00)),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_already_have_an2"
                                                        .tr,
                                                    style: TextStyle(
                                                        // color: ColorConstant
                                                        //     .whiteA700,
                                                        fontSize: getFontSize(
                                                            14),
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight
                                                            .w400)),
                                                TextSpan(
                                                    text: "lbl_sign_in2".tr,
                                                    style: TextStyle(
                                                        // color: ColorConstant
                                                        //     .whiteA700,
                                                        fontSize: getFontSize(
                                                            14),
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight
                                                            .w500))
                                              ]),
                                              textAlign: TextAlign.center))))
                            ]),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnSignup() {
    // Get.toNamed(AppRoutes.survey10Screen);
  }

  onTapTxtAlreadyhavean() {
    // Get.toNamed(AppRoutes.signInScreen);
  }
}
