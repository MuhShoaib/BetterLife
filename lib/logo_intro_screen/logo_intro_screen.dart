import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/logo_intro_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoIntroScreen extends GetWidget<LogoIntroController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapLogoIntro();
                        },
                        child: Container(
                            height: size.height,
                            width: size.width,
                            // decoration: BoxDecoration(color: ColorConstant.gray900),
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(40.00),
                                          top: getVerticalSize(40.00),
                                          right: getHorizontalSize(40.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Container(
                                          height: getVerticalSize(180.00),
                                          width: getHorizontalSize(173.52),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgGroup30,
                                              fit: BoxFit.fill))))
                            ])))))));
  }

  onTapLogoIntro() {
    // Get.toNamed(AppRoutes.signInScreen);
  }
}
