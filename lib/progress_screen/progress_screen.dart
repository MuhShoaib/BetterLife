import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../progress_screen/widgets/progress_item_widget.dart';
import 'controller/progress_controller.dart';
import 'models/progress_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressScreen extends GetWidget<ProgressController> {
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
                      Align(alignment: Alignment.centerLeft,
                          child: Container(height: getVerticalSize(52.74),
                              width: size.width,
                              margin: EdgeInsets.only(
                                  top: getVerticalSize(43.00)),
                              child: Stack(alignment: Alignment.topRight,
                                  children: [Align(alignment: Alignment
                                      .centerLeft,
                                      child: Container(
                                          height: getVerticalSize(52.74),
                                          width: size.width,
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(alignment: Alignment
                                                    .centerLeft,
                                                    child: Container(
                                                        decoration: BoxDecoration(
                                                            // color: ColorConstant
                                                            //     .gray900,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  // color: ColorConstant
                                                                  //     .black90005,
                                                                  spreadRadius: getHorizontalSize(
                                                                      2.00),
                                                                  blurRadius: getHorizontalSize(
                                                                      2.00),
                                                                  offset: Offset(
                                                                      0, 4))
                                                            ]),
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
                                                                      width: size
                                                                          .width,
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                          bottom: getVerticalSize(
                                                                              37.00)),
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  30.00),
                                                                              right: getHorizontalSize(
                                                                                  30.00)),
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
                                                                                        15.74),
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
                                                                                        bottom: getVerticalSize(
                                                                                            1.00)),
                                                                                    child: Container(
                                                                                        height: getVerticalSize(
                                                                                            14.74),
                                                                                        width: getHorizontalSize(
                                                                                            14.00),
                                                                                        child: SvgPicture
                                                                                            .asset(
                                                                                            ImageConstant
                                                                                                .imgVector46,
                                                                                            fit: BoxFit
                                                                                                .fill)))
                                                                              ]))))
                                                            ]))),
                                                Align(alignment: Alignment
                                                    .bottomLeft,
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            top: getVerticalSize(
                                                                10.00),
                                                            bottom: getVerticalSize(
                                                                5.00)),
                                                        child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment
                                                                .center,
                                                            mainAxisSize: MainAxisSize
                                                                .max,
                                                            children: [
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapTxtFeatured();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left: getHorizontalSize(
                                                                              30.00)),
                                                                      child: Text(
                                                                          "lbl_featured"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          // style: AppStyle
                                                                          //     .textStyleIntersemibold121
                                                                          //     .copyWith(
                                                                          //     fontSize: getFontSize(
                                                                          //         12))
                                                                      ))),
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapTxtWorkout();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left: getHorizontalSize(
                                                                              30.00)),
                                                                      child: Text(
                                                                          "lbl_workout"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          // style: AppStyle
                                                                          //     .textStyleIntersemibold121
                                                                          //     .copyWith(
                                                                          //     fontSize: getFontSize(
                                                                          //         12))
                                                                      ))),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          30.00)),
                                                                  child: Text(
                                                                      "lbl_progress"
                                                                          .tr,
                                                                      overflow: TextOverflow
                                                                          .ellipsis,
                                                                      textAlign: TextAlign
                                                                          .left,
                                                                      // style: AppStyle
                                                                      //     .textStyleIntersemibold12
                                                                      //     .copyWith(
                                                                      //     fontSize: getFontSize(
                                                                      //         12))
                                                                  )),
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapTxtCreateworkout();
                                                                  },
                                                                  child: Padding(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                          left: getHorizontalSize(
                                                                              30.00),
                                                                          right: getHorizontalSize(
                                                                              9.00)),
                                                                      child: Text(
                                                                          "lbl_create_workout"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          // style: AppStyle
                                                                          //     .textStyleIntersemibold121
                                                                          //     .copyWith(
                                                                          //     fontSize: getFontSize(
                                                                          //         12))
                                                                      )))
                                                            ])))
                                              ]))), Align(alignment: Alignment
                                      .topRight,
                                      child: Container(
                                          width: getHorizontalSize(76.00),
                                          margin: EdgeInsets.only(
                                              left: getHorizontalSize(131.00),
                                              right: getHorizontalSize(131.00),
                                              bottom: getVerticalSize(10.00)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Align(alignment: Alignment
                                                    .centerLeft,
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            right: getHorizontalSize(
                                                                10.00)),
                                                        child: Container(
                                                            height: getVerticalSize(
                                                                25.74),
                                                            width: getHorizontalSize(
                                                                38.56),
                                                            child: SvgPicture
                                                                .asset(
                                                                ImageConstant
                                                                    .imgGroup2,
                                                                fit: BoxFit
                                                                    .fill)))),
                                                Container(
                                                    height: getVerticalSize(
                                                        1.00),
                                                    width: getHorizontalSize(
                                                        52.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00),
                                                        top: getVerticalSize(
                                                            22.00)),
                                                    // decoration: BoxDecoration(
                                                    //     color: ColorConstant
                                                    //         .tealA400)
                                                )
                                              ])))
                                  ]))),
                      Padding(padding: EdgeInsets.only(
                          left: getHorizontalSize(30.00),
                          top: getVerticalSize(20.00),
                          right: getHorizontalSize(29.70),
                          bottom: getVerticalSize(56.00)),
                          child: Obx(() =>
                              ListView.builder(physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.progressModelObj.value
                                      .progressItemList.length,
                                  itemBuilder: (context, index) {
                                    ProgressItemModel model = controller
                                        .progressModelObj.value
                                        .progressItemList[index];
                                    return ProgressItemWidget(
                                        model, onTapTxtWorkout: onTapTxtWorkout,
                                        onTapTxtSets: onTapTxtSets,
                                        onTapTxtDeadlift: onTapTxtDeadlift,
                                        onTapTxttf: onTapTxttf,
                                        onTapTxtAbrollouts: onTapTxtAbrollouts,
                                        onTapTxttf1: onTapTxttf1,
                                        onTapTxtAbrollouts1: onTapTxtAbrollouts1,
                                        onTapTxttf2: onTapTxttf2);
                                  })))
                    ]))))));
  }

  onTapTxtWorkout() {
    // Get.toNamed(AppRoutes.workouts6Screen);
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtSets() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtDeadlift() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxttf() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtAbrollouts() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxttf1() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtAbrollouts1() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxttf2() {
    // Get.toNamed(AppRoutes.workouts6Screen);
  }

  onTapTxtFeatured() {
    // Get.toNamed(AppRoutes.workoutsScreen);
  }

  onTapTxtCreateworkout() {
    // Get.toNamed(AppRoutes.createWorkout5Screen);
  }
}
