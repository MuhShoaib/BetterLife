import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/recipe_controller.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeScreen extends GetWidget<RecipeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(),
                        // decoration: BoxDecoration(color: ColorConstant.gray50),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(789.00),
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(5.00)),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  // height: getVerticalSize(789.00),
                                                    width: size.width,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                              Alignment.topLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/receipe.png",
                                                                      // ImageConstant
                                                                      //     .imgUnsplasheeqbbe,
                                                                      height:
                                                                      getVerticalSize(
                                                                          369.00),
                                                                      width:
                                                                      getHorizontalSize(
                                                                          375.00),
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Align(
                                                              alignment:
                                                              Alignment
                                                                  .bottomLeft,
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      443.00),
                                                                  width: size
                                                                      .width,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                      top:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                                  child: Stack(
                                                                      alignment: Alignment
                                                                          .bottomCenter,
                                                                      children: [
                                                                        // Align(
                                                                        //     alignment:
                                                                        //     Alignment
                                                                        //         .centerLeft,
                                                                        //     child: Container(
                                                                        //         height: getVerticalSize(
                                                                        //             443.00),
                                                                        //         width: getHorizontalSize(
                                                                        //             375.00),
                                                                        //         child: SvgPicture
                                                                        //             .asset(
                                                                        //             ImageConstant
                                                                        //                 .imgRectangle786,
                                                                        //             fit: BoxFit
                                                                        //                 .fill))),
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                            child:
                                                                            Padding(
                                                                                padding: EdgeInsets
                                                                                    .only(
                                                                                    left: getHorizontalSize(
                                                                                        30.00),
                                                                                    top: getVerticalSize(
                                                                                        10.00),
                                                                                    right: getHorizontalSize(
                                                                                        30.00)),
                                                                                child: SingleChildScrollView(
                                                                                  child:
                                                                                  Column(
                                                                                      mainAxisSize: MainAxisSize
                                                                                          .min,
                                                                                      crossAxisAlignment: CrossAxisAlignment
                                                                                          .start,
                                                                                      mainAxisAlignment: MainAxisAlignment
                                                                                          .end,
                                                                                      children: [
                                                                                        Padding(
                                                                                            padding: EdgeInsets
                                                                                                .only(
                                                                                                top: getVerticalSize(
                                                                                                    94.00),
                                                                                                right: getHorizontalSize(
                                                                                                    10.00)),
                                                                                            child: Text(
                                                                                                "lbl_ingredients"
                                                                                                    .tr,
                                                                                                overflow: TextOverflow
                                                                                                    .ellipsis,
                                                                                                textAlign: TextAlign
                                                                                                    .left,
                                                                                                style: TextStyle(color: kPrimaryColor,fontSize: 16),
                                                                                                // style: AppStyle
                                                                                                //     .textStyleIntermedium161
                                                                                                //     .copyWith(
                                                                                                //     fontSize: getFontSize(
                                                                                                //         16))
                                                                                            )),
                                                                                        Padding(
                                                                                            padding: EdgeInsets
                                                                                                .only(
                                                                                                top: getVerticalSize(
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
                                                                                                      width: getHorizontalSize(
                                                                                                          52.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "lbl_iteams"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleIntermedium141
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         14),
                                                                                                          //     letterSpacing: 0.56,
                                                                                                          //     height: 2.14)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          139.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_teaspoons_oli"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          156.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_cups_chopped"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          303.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_5_garlic_cloves"
                                                                                                              .tr,
                                                                                                        style: TextStyle(color: Colors.white,fontSize: 12),
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          // style/
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          127.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_3_4_teaspoons_s"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          169.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_3_stalk_celer"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          152.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_1_medium_carrot"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          277.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_3_cup_green_bea"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          136.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_teaspoon_oreg"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Container(
                                                                                                      width: getHorizontalSize(
                                                                                                          141.00),
                                                                                                      margin: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_3_fresh_black_p"
                                                                                                              .tr,
                                                                                                          maxLines: null,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_1_teaspoon_basi"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          top: getVerticalSize(
                                                                                                              25.00),
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_1_medium_bell_p"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          top: getVerticalSize(
                                                                                                              55.00),
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_cups_water_m"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          top: getVerticalSize(
                                                                                                              85.00)),
                                                                                                      child: Text(
                                                                                                          "msg_2_650_ml_jar"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          top: getVerticalSize(
                                                                                                              115.00),
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_1_cup_chickpeas"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      )),
                                                                                                  Padding(
                                                                                                      padding: EdgeInsets
                                                                                                          .only(
                                                                                                          top: getVerticalSize(
                                                                                                              145.00),
                                                                                                          right: getHorizontalSize(
                                                                                                              10.00)),
                                                                                                      child: Text(
                                                                                                          "msg_1_cup_dry_pasta"
                                                                                                              .tr,
                                                                                                          overflow: TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign: TextAlign
                                                                                                              .left,
                                                                                                          style: TextStyle(color: Colors.white,fontSize: 12)
                                                                                                          // style: AppStyle
                                                                                                          //     .textStyleInterregular12
                                                                                                          //     .copyWith(
                                                                                                          //     fontSize: getFontSize(
                                                                                                          //         12),
                                                                                                          //     letterSpacing: 0.48,
                                                                                                          //     height: 2.50)
                                                                                                      ))
                                                                                                ]))
                                                                                      ]),
                                                                                )))
                                                                      ])))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            15.00),
                                                        top: getVerticalSize(
                                                            19.00),
                                                        right: getHorizontalSize(
                                                            15.00),
                                                        bottom: getVerticalSize(
                                                            19.00)),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize
                                                            .min,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                              Alignment
                                                                  .centerLeft,
                                                              child: GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgFrame262();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left:
                                                                          getHorizontalSize(
                                                                              15.00),
                                                                          right:
                                                                          getHorizontalSize(
                                                                              15.00)),
                                                                      child: Container(
                                                                          height:
                                                                          getVerticalSize(
                                                                              21.00),
                                                                          width:
                                                                          getHorizontalSize(
                                                                              24.00),
                                                                          child: SvgPicture
                                                                              .asset(
                                                                              ImageConstant
                                                                                  .imgFrame262,
                                                                              fit: BoxFit
                                                                                  .fill))))),
                                                          Align(
                                                              alignment:
                                                              Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      100.00),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      345.00),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                      top:
                                                                      getVerticalSize(
                                                                          326.00)),
                                                                  child: Stack(
                                                                      alignment: Alignment
                                                                          .centerLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                            child: Container(
                                                                                height: getVerticalSize(
                                                                                    90.00),
                                                                                width: getHorizontalSize(
                                                                                    345.00),
                                                                                child: SvgPicture
                                                                                    .asset(
                                                                                    ImageConstant
                                                                                        .imgRectangle787,
                                                                                    fit: BoxFit
                                                                                        .fill))),
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                            child:
                                                                            Padding(
                                                                                padding: EdgeInsets
                                                                                    .only(
                                                                                  left:
                                                                                  getHorizontalSize(
                                                                                      32.00),
                                                                                  top:
                                                                                  getVerticalSize(
                                                                                      10.00),
                                                                                ),
                                                                                child: Column(
                                                                                    mainAxisSize: MainAxisSize
                                                                                        .min,
                                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                                        .start,
                                                                                    mainAxisAlignment: MainAxisAlignment
                                                                                        .start,
                                                                                    children: [
                                                                                      Text(
                                                                                          "lbl_food_name"
                                                                                              .tr,
                                                                                          overflow: TextOverflow
                                                                                              .ellipsis,
                                                                                          textAlign: TextAlign
                                                                                              .left,
                                                                                          style: TextStyle(color: kPrimaryColor,fontSize: 16)
                                                                                          // style: AppStyle
                                                                                          //     .textStyleRobotoromansemibold18
                                                                                          //     .copyWith(
                                                                                          //     fontSize: getFontSize(
                                                                                          //         18))
                                                                                      ),
                                                                                      Padding(
                                                                                          padding: EdgeInsets
                                                                                              .only(
                                                                                              top: getVerticalSize(
                                                                                                  5.00),
                                                                                              right: getHorizontalSize(
                                                                                                  10.00)),
                                                                                          child: Text(
                                                                                              "lbl_16_calorie"
                                                                                                  .tr,
                                                                                              overflow: TextOverflow
                                                                                                  .ellipsis,
                                                                                              textAlign: TextAlign
                                                                                                  .left,
                                                                                              style: TextStyle(color: Colors.white,fontSize: 14)
                                                                                              // style: AppStyle
                                                                                              //     .textStyleRobotoromanregular14
                                                                                              //     .copyWith(
                                                                                              //     fontSize: getFontSize(
                                                                                              //         14))
                                                                                          ))
                                                                                    ])))
                                                                      ])))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapImgFrame262() {
    // Get.toNamed(AppRoutes.foodScreen);
  }
}
