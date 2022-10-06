import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/sign_in_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends GetWidget<SignInController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(35.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: getHorizontalSize(52.00), right: getHorizontalSize(52.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width: getHorizontalSize(48.20),
                                                child: SvgPicture.asset(ImageConstant.imgGroup3, fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(top: getVerticalSize(20.00)),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                child: Column(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                          child: Text("lbl_welcome".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              // style: AppStyle.textStyleIntersemibold24
                                                                              //     .copyWith(fontSize: getFontSize(24))
                                                                          )),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(top: getVerticalSize(10.00)),
                                                                          child: Text("msg_sign_in_to_cont".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              // style: AppStyle.textStyleIntermedium18
                                                                              //     .copyWith(fontSize: getFontSize(18))
                                                                          ))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                                                                child: Column(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: [
                                                                      Column(
                                                                          mainAxisSize: MainAxisSize.min,
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                                padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                                child: Text("lbl_email".tr,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    // style: AppStyle.textStyleIntermedium145
                                                                                    //     .copyWith(fontSize: getFontSize(14))
                                                                                )),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(top: getVerticalSize(5.00)),
                                                                                child: Container(
                                                                                    height: getVerticalSize(20.00),
                                                                                    width: getHorizontalSize(315.00),
                                                                                    child: TextFormField(
                                                                                        controller: controller.frame34Controller,
                                                                                        decoration: InputDecoration(
                                                                                            hintText: "msg_example_raju43".tr,
                                                                                            // hintStyle: AppStyle.textStyleInterregular122.copyWith(
                                                                                            //     fontSize: getFontSize(12.0),
                                                                                            //     color: ColorConstant.bluegray200),
                                                                                            enabledBorder: UnderlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                    // color: ColorConstant.whiteA700,
                                                                                                    width: 1)),
                                                                                            focusedBorder: UnderlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                    // color: ColorConstant.whiteA700,
                                                                                                    width: 1)),
                                                                                            isDense: true,
                                                                                            contentPadding: EdgeInsets.only(
                                                                                                top: getVerticalSize(1.03),
                                                                                                bottom: getVerticalSize(6.03))),
                                                                                        style: TextStyle(
                                                                                            // color: ColorConstant.bluegray200,
                                                                                            fontSize: getFontSize(12.0),
                                                                                            fontFamily: 'Inter',
                                                                                            fontWeight: FontWeight.w400))))
                                                                          ]),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(top: getVerticalSize(20.00)),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                                    child: Text("lbl_passwoard".tr,
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        // style: AppStyle.textStyleIntermedium145
                                                                                        //     .copyWith(fontSize: getFontSize(14))
                                                                                    )),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(top: getVerticalSize(5.00)),
                                                                                    child: Container(
                                                                                        height: getVerticalSize(20.00),
                                                                                        width: getHorizontalSize(315.00),
                                                                                        child: TextFormField(
                                                                                            controller: controller.passwordController,
                                                                                            decoration: InputDecoration(
                                                                                                hintText: "lbl2".tr,
                                                                                                // hintStyle: AppStyle.textStyleInterregular122.copyWith(
                                                                                                //     fontSize: getFontSize(12.0),
                                                                                                //     color: ColorConstant.bluegray200),
                                                                                                enabledBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                        // color: ColorConstant.whiteA700,
                                                                                                        width: 1)),
                                                                                                focusedBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                        // color: ColorConstant.whiteA700,
                                                                                                        width: 1)),
                                                                                                isDense: true,
                                                                                                contentPadding: EdgeInsets.only(
                                                                                                    top: getVerticalSize(1.03),
                                                                                                    bottom: getVerticalSize(6.03))),
                                                                                            style: TextStyle(
                                                                                                // color: ColorConstant.bluegray200,
                                                                                                fontSize: getFontSize(12.0),
                                                                                                fontFamily: 'Inter',
                                                                                                fontWeight: FontWeight.w400))))
                                                                              ])),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(top: getVerticalSize(20.00)),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                                    child: Text("msg_confirm_passwoa".tr,
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        // style: AppStyle.textStyleIntermedium145
                                                                                        //     .copyWith(fontSize: getFontSize(14))
                                                                                    )),
                                                                                Padding(
                                                                                    padding: EdgeInsets.only(top: getVerticalSize(5.00)),
                                                                                    child: Container(
                                                                                        height: getVerticalSize(20.00),
                                                                                        width: getHorizontalSize(315.00),
                                                                                        child: TextFormField(
                                                                                            controller: controller.passwordController1,
                                                                                            decoration: InputDecoration(
                                                                                                hintText: "lbl2".tr,
                                                                                                // hintStyle: AppStyle.textStyleInterregular122.copyWith(
                                                                                                //     fontSize: getFontSize(12.0),
                                                                                                //     color: ColorConstant.bluegray200),
                                                                                                enabledBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                        // color: ColorConstant.whiteA700,
                                                                                                        width: 1)),
                                                                                                focusedBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                        // color: ColorConstant.whiteA700,
                                                                                                        width: 1)),
                                                                                                isDense: true,
                                                                                                contentPadding: EdgeInsets.only(
                                                                                                    top: getVerticalSize(1.03),
                                                                                                    bottom: getVerticalSize(6.03))),
                                                                                            style: TextStyle(
                                                                                                // color: ColorConstant.bluegray200,
                                                                                                fontSize: getFontSize(12.0),
                                                                                                fontFamily: 'Inter',
                                                                                                fontWeight: FontWeight.w400))))
                                                                              ]))
                                                                    ])),
                                                            Padding(
                                                                padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                                                                child: GestureDetector(
                                                                    onTap: () {
                                                                      onTapBtnSignin();
                                                                    },
                                                                    child: Container(
                                                                        alignment: Alignment.center,
                                                                        height: getVerticalSize(50.00),
                                                                        width: getHorizontalSize(315.00),
                                                                        // decoration: AppDecoration.textStyleIntermedium143,
                                                                        child: Text("lbl_sign_in".tr,
                                                                            textAlign: TextAlign.center,
                                                                            // style: AppStyle.textStyleIntermedium143
                                                                            //     .copyWith(fontSize: getFontSize(14))
                                                                        ))))
                                                          ]),
                                                      Padding(
                                                          padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                                                          child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              mainAxisSize: MainAxisSize.max,
                                                              children: [
                                                                Container(
                                                                    height: getVerticalSize(1.00),
                                                                    width: getHorizontalSize(139.00),
                                                                    margin:
                                                                        EdgeInsets.only(top: getVerticalSize(11.00), bottom: getVerticalSize(9.00)),
                                                                    // decoration: BoxDecoration(
                                                                    //     color: ColorConstant.whiteA700)
                                                                ),
                                                                Text("lbl_or".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    // style: AppStyle.textStylePoppinsregular14.copyWith(fontSize: getFontSize(14))
                                                                ),
                                                                Container(
                                                                    height: getVerticalSize(1.00),
                                                                    width: getHorizontalSize(139.00),
                                                                    margin:
                                                                        EdgeInsets.only(top: getVerticalSize(11.00), bottom: getVerticalSize(9.00)),
                                                                    // decoration: BoxDecoration(color: ColorConstant.whiteA700)
                                                                )
                                                              ])),
                                                      Padding(
                                                          padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                                                          child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                    height: getVerticalSize(50.00),
                                                                    width: getHorizontalSize(315.00),
                                                                    child: TextFormField(
                                                                        controller: controller.frame207Controller,
                                                                        decoration: InputDecoration(
                                                                            hintText: "msg_continue_with_g".tr,
                                                                            // hintStyle: AppStyle.textStyleInterregular14.copyWith(
                                                                            //     fontSize: getFontSize(14.0), color: ColorConstant.whiteA700),
                                                                            border: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
                                                                                borderSide: BorderSide.none),
                                                                            prefixIcon: Padding(
                                                                                padding: EdgeInsets.only(
                                                                                    left: getHorizontalSize(16.00), right: getHorizontalSize(10.00)),
                                                                                child: Container(
                                                                                    height: getSize(25.00),
                                                                                    width: getSize(25.00),
                                                                                    child: SvgPicture.asset(ImageConstant.imgGroup97,
                                                                                        fit: BoxFit.contain))),
                                                                            prefixIconConstraints:
                                                                                BoxConstraints(minWidth: getSize(25.00), minHeight: getSize(25.00)),
                                                                            filled: true,
                                                                            // fillColor: ColorConstant.whiteA70019,
                                                                            isDense: true,
                                                                            contentPadding: EdgeInsets.only(
                                                                                top: getVerticalSize(14.21), bottom: getVerticalSize(13.21))),
                                                                        style: TextStyle(
                                                                            // color: ColorConstant.whiteA700,
                                                                            fontSize: getFontSize(14.0),
                                                                            fontFamily: 'Inter',
                                                                            fontWeight: FontWeight.w400))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(top: getVerticalSize(20.00)),
                                                                    child: Container(
                                                                        height: getVerticalSize(50.00),
                                                                        width: getHorizontalSize(315.00),
                                                                        child: TextFormField(
                                                                            controller: controller.frame205Controller,
                                                                            decoration: InputDecoration(
                                                                                hintText: "msg_continue_with_f".tr,
                                                                                // hintStyle: AppStyle.textStyleInterregular14.copyWith(
                                                                                //     fontSize: getFontSize(14.0), color: ColorConstant.whiteA700),
                                                                                border: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
                                                                                    borderSide: BorderSide.none),
                                                                                prefixIcon: Padding(
                                                                                    padding: EdgeInsets.only(
                                                                                        left: getHorizontalSize(16.00),
                                                                                        right: getHorizontalSize(10.00)),
                                                                                    child: Container(
                                                                                        height: getSize(25.00),
                                                                                        width: getSize(25.00),
                                                                                        child: SvgPicture.asset(ImageConstant.imgGroup98,
                                                                                            fit: BoxFit.contain))),
                                                                                prefixIconConstraints: BoxConstraints(
                                                                                    minWidth: getSize(25.00), minHeight: getSize(25.00)),
                                                                                filled: true,
                                                                                // fillColor: ColorConstant.whiteA70019,
                                                                                isDense: true,
                                                                                contentPadding: EdgeInsets.only(
                                                                                    top: getVerticalSize(14.21), bottom: getVerticalSize(13.21))),
                                                                            style: TextStyle(
                                                                                // color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(14.0),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w400))))
                                                              ]))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDonthaveana();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(52.00), top: getVerticalSize(30.00), right: getHorizontalSize(52.00)),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "msg_don_t_have_an_a2".tr,
                                                          style: TextStyle(
                                                              // color: ColorConstant.whiteA700,
                                                              fontSize: getFontSize(14),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w400)),
                                                      TextSpan(
                                                          text: "lbl_sign_up".tr,
                                                          style: TextStyle(
                                                              // color: ColorConstant.whiteA700,
                                                              fontSize: getFontSize(14),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w500))
                                                    ]),
                                                    textAlign: TextAlign.center)))
                                      ]))
                            ]))))));
  }

  onTapBtnSignin() {
    // Get.toNamed(AppRoutes.socialScreen);
  }

  onTapTxtDonthaveana() {
    // Get.toNamed(AppRoutes.signUpScreen);
  }
}
