import 'package:better_life/core/utils/image_constant.dart';
import 'package:better_life/core/utils/routes.dart';
import 'package:get/get.dart';

import '../core/utils/math_utils.dart';
import '../create_workout2_screen/widgets/create_workout_item_widget.dart';
import 'controller/create_workout2_controller.dart';
import 'models/create_workout_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CreateWorkout2Screen extends GetWidget<CreateWorkout2Controller> {
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.centerLeft,
                          child: Container(height: getVerticalSize(789.00),
                              width: size.width,
                              margin: EdgeInsets.only(
                                  top: getVerticalSize(5.00)),
                              child: Stack(alignment: Alignment.bottomLeft,
                                  children: [Align(alignment: Alignment
                                      .centerLeft,
                                      child: Container(
                                          height: getVerticalSize(789.00),
                                          width: size.width,
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(alignment: Alignment
                                                    .bottomCenter,
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left: getHorizontalSize(
                                                                30.00),
                                                            top: getVerticalSize(
                                                                10.00),
                                                            right: getHorizontalSize(
                                                                30.00)),
                                                        child: Obx(() =>
                                                            ListView.builder(
                                                                physics: BouncingScrollPhysics(),
                                                                shrinkWrap: true,
                                                                itemCount: controller
                                                                    .createWorkout2ModelObj
                                                                    .value
                                                                    .createWorkoutItemList
                                                                    .length,
                                                                itemBuilder: (
                                                                    context,
                                                                    index) {
                                                                  CreateWorkoutItemModel model = controller
                                                                      .createWorkout2ModelObj
                                                                      .value
                                                                      .createWorkoutItemList[index];
                                                                  return CreateWorkoutItemWidget(
                                                                      model);
                                                                })))),
                                                Align(alignment: Alignment
                                                    .topLeft,
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            bottom: getVerticalSize(
                                                                10.00)),
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
                                                                          top: getVerticalSize(
                                                                              19.00),
                                                                          bottom: getVerticalSize(
                                                                              37.00)),
                                                                      child: Padding(
                                                                          padding: EdgeInsets
                                                                              .only(
                                                                              left: getHorizontalSize(
                                                                                  30.00),
                                                                              right: getHorizontalSize(
                                                                                  30.29)),
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
                                                                                  child: Text(
                                                                                    "lbl_new_workout"
                                                                                        .tr,
                                                                                    overflow: TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign: TextAlign
                                                                                        .left,
                                                                                    // style: AppStyle
                                                                                    //     .textStyleInterbold14
                                                                                    //     .copyWith(
                                                                                    //   fontSize: getFontSize(
                                                                                    //     14,),),
                                                                                  ),),
                                                                                Padding(
                                                                                    padding: EdgeInsets
                                                                                        .only(
                                                                                        top: getVerticalSize(
                                                                                            2.00),
                                                                                        bottom: getVerticalSize(
                                                                                            0.29)),
                                                                                    child: Container(
                                                                                        height: getSize(
                                                                                            18.71),
                                                                                        width: getSize(
                                                                                            18.71),
                                                                                        child: SvgPicture
                                                                                            .asset(
                                                                                            ImageConstant
                                                                                                .imgGroup981,
                                                                                            fit: BoxFit
                                                                                                .fill)))
                                                                              ]))))
                                                            ])))
                                              ]))), Align(alignment: Alignment
                                      .bottomLeft,
                                      child: Container(margin: EdgeInsets.only(
                                          top: getVerticalSize(10.00)),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(0.5,
                                                      -3.0616171314629196e-17),
                                                  end: Alignment(
                                                      0.5, 0.9999999999999999),
                                                  colors: [
                                                    // ColorConstant.gray90000,
                                                    // ColorConstant.gray900
                                                  ])),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .center,
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            30.00),
                                                        top: getVerticalSize(
                                                            29.00),
                                                        right: getHorizontalSize(
                                                            30.00),
                                                        bottom: getVerticalSize(
                                                            30.00)),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapBtnSaveworkout();
                                                        },
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: getVerticalSize(
                                                                50.00),
                                                            width: getHorizontalSize(
                                                                315.00),
                                                            // decoration: AppDecoration
                                                            //     .textStyleIntersemibold141,
                                                            child: Text(
                                                                "lbl_save_workout"
                                                                    .tr,
                                                                textAlign: TextAlign
                                                                    .center,
                                                                // style: AppStyle
                                                                //     .textStyleIntersemibold141
                                                                //     .copyWith(
                                                                //     fontSize: getFontSize(
                                                                //         14))
                                                            ))))
                                              ])))
                                  ])))
                    ]))))));
  }

  onTapBtnSaveworkout() {
    // Get.toNamed(AppRoutes.createWorkout5Screen);
  }
}
