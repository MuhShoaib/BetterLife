import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../core/widgets/home_appbar.dart';
import '../food_tracker_screen/widgets/group1191_item_widget.dart';
import '../food_tracker_screen/widgets/group1192_item_widget.dart';
import 'controller/food_tracker_controller.dart';
import 'models/group1191_item_model.dart';
import 'models/group1192_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodTrackerScreen extends GetWidget<FoodTrackerController> {
  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(width: size.width,
            child: SingleChildScrollView(child: Container(
                margin: EdgeInsets.only(),
                // decoration: BoxDecoration(color: ColorConstant.gray900),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Align(alignment: Alignment.centerLeft,
                      //     child: Container(width: double.infinity,
                      //         margin: EdgeInsets.only(
                      //             top: getVerticalSize(43.00)),
                      //         decoration: BoxDecoration(),
                      //         child: Column(mainAxisSize: MainAxisSize.min,
                      //             crossAxisAlignment: CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [Align(alignment: Alignment
                      //                 .centerLeft,
                      //                 child: Container(width: size.width,
                      //                     margin: EdgeInsets.only(
                      //                         bottom: getVerticalSize(15.00)),
                      //                     child: Padding(
                      //                         padding: EdgeInsets.only(
                      //                             left: getHorizontalSize(
                      //                                 30.00),
                      //                             right: getHorizontalSize(
                      //                                 30.00)),
                      //                         child: Row(
                      //                             mainAxisAlignment: MainAxisAlignment
                      //                                 .spaceBetween,
                      //                             crossAxisAlignment: CrossAxisAlignment
                      //                                 .start,
                      //                             mainAxisSize: MainAxisSize
                      //                                 .max,
                      //                             children: [
                      //                               Padding(padding: EdgeInsets
                      //                                   .only(
                      //                                   bottom: getVerticalSize(
                      //                                       10.00)),
                      //                                   child: Container(
                      //                                       height: getVerticalSize(
                      //                                           15.74),
                      //                                       width: getHorizontalSize(
                      //                                           24.00),
                      //                                       child: SvgPicture
                      //                                           .asset(
                      //                                           ImageConstant
                      //                                               .imgFrame2621,
                      //                                           fit: BoxFit
                      //                                               .fill))),
                      //                               Container(
                      //                                   height: getVerticalSize(
                      //                                       25.74),
                      //                                   width: getHorizontalSize(
                      //                                       38.56),
                      //                                   child: SvgPicture.asset(
                      //                                       ImageConstant
                      //                                           .imgGroup6,
                      //                                       fit: BoxFit.fill)),
                      //                               ClipRRect(
                      //                                   borderRadius: BorderRadius
                      //                                       .circular(
                      //                                       getSize(12.87)),
                      //                                   child: Image.asset(
                      //                                       ImageConstant
                      //                                           .imgElipse,
                      //                                       height: getVerticalSize(
                      //                                           25.74),
                      //                                       width: getHorizontalSize(
                      //                                           40.00),
                      //                                       fit: BoxFit.fill))
                      //                             ]))))
                      //             ]))),
                      HomeAppBar(),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          top: getVerticalSize(30.00),
                          right: getHorizontalSize(29.00),
                          bottom: getVerticalSize(37.00)),
                          child: Column(mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(
                                    left: getHorizontalSize(93.00),
                                    right: getHorizontalSize(93.00)),
                                    child: Column(mainAxisSize: MainAxisSize
                                        .min,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
                                          Padding(padding: EdgeInsets.only(
                                              left: getHorizontalSize(50.68),
                                              right: getHorizontalSize(50.67)),
                                              child: Container(
                                                  height: getVerticalSize(
                                                      24.00),
                                                  width: getHorizontalSize(
                                                      28.65),
                                                  child: SvgPicture.asset(
                                                      // ImageConstant.imgGroup14,
                                                    "assets/images/foodtrack.svg",
                                                      fit: BoxFit.fill))),
                                          Align(alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          20.00)),
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
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_7_65"
                                                                                  .tr,
                                                                              style: TextStyle(
                                                                                color: kPrimaryColor,
                                                                                  // color: ColorConstant
                                                                                  //     .tealA400,
                                                                                  fontSize: getFontSize(
                                                                                      36),
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight: FontWeight
                                                                                      .w700)),
                                                                          TextSpan(
                                                                              text: "lbl_kcal"
                                                                                  .tr,
                                                                              style: TextStyle(
                                                                                  color: kPrimaryColor,
                                                                                  // color: ColorConstant
                                                                                  //     .tealA400,
                                                                                  fontSize: getFontSize(
                                                                                      24),
                                                                                  fontFamily: 'Inter',
                                                                                  fontWeight: FontWeight
                                                                                      .w400))
                                                                        ]),
                                                                    textAlign: TextAlign
                                                                        .left))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        11.00),
                                                                    top: getVerticalSize(
                                                                        5.00),
                                                                    right: getHorizontalSize(
                                                                        11.00)),
                                                                child: Text(
                                                                    "msg_today_s_calorie"
                                                                        .tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: TextStyle(color: Colors.white),
                                                                    // style: AppStyle
                                                                    //     .textStyleInterregular14
                                                                    //     .copyWith(
                                                                    //     fontSize: getFontSize(
                                                                    //         14))
                                                                )))
                                                      ])))
                                        ])),
                                Align(alignment: Alignment.centerLeft,
                                    child: Padding(padding: EdgeInsets.only(
                                        top: getVerticalSize(40.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [
                                              Padding(padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                      1.00)),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics: BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .foodTrackerModelObj
                                                              .value
                                                              .group1191ItemList
                                                              .length,
                                                          itemBuilder: (context,
                                                              index) {
                                                            Group1191ItemModel model = controller
                                                                .foodTrackerModelObj
                                                                .value
                                                                .group1191ItemList[index];
                                                            return Group1191ItemWidget(
                                                                model,
                                                                onTapGroup: onTapGroup);
                                                          }))),
                                              Container(width: double.infinity,
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          1.00),
                                                      top: getVerticalSize(
                                                          30.00)),
                                                  decoration: BoxDecoration(
                                                      // color: ColorConstant
                                                      //     .whiteA70019,
                                                      borderRadius: BorderRadius
                                                          .circular(
                                                          getHorizontalSize(
                                                              10.00))),
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
                                                                left: getHorizontalSize(
                                                                    15.00),
                                                                top: getVerticalSize(
                                                                    15.00),
                                                                right: getHorizontalSize(
                                                                    15.00)),
                                                            child: Text(
                                                                "msg_overview_analyt"
                                                                    .tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: TextStyle(color: Colors.white),
                                                                // style: AppStyle
                                                                //     .textStyleIntermedium141
                                                                //     .copyWith(
                                                                //     fontSize: getFontSize(
                                                                //         14))
                                                            )),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: getHorizontalSize(
                                                                        15.00),
                                                                    top: getVerticalSize(
                                                                        20.00),
                                                                    right: getHorizontalSize(
                                                                        15.00),
                                                                    bottom: getVerticalSize(
                                                                        15.00)),
                                                                child: Obx(() =>
                                                                    ListView
                                                                        .builder(
                                                                        physics: BouncingScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        itemCount: controller
                                                                            .foodTrackerModelObj
                                                                            .value
                                                                            .group1192ItemList
                                                                            .length,
                                                                        itemBuilder: (
                                                                            context,
                                                                            index) {
                                                                          Group1192ItemModel model = controller
                                                                              .foodTrackerModelObj
                                                                              .value
                                                                              .group1192ItemList[index];
                                                                          return Group1192ItemWidget(
                                                                              model);
                                                                        }))))
                                                      ]))
                                            ])))
                              ]))
                    ]))))));
  }

  onTapGroup() {
    // Get.toNamed(AppRoutes.foodTracker1Screen);
  }
}
