import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/progress_controller.dart';
import '../models/progress_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class ProgressItemWidget extends StatelessWidget {
  ProgressItemWidget(this.progressItemModelObj,
      {this.onTapTxtWorkout,
      this.onTapTxtSets,
      this.onTapTxtDeadlift,
      this.onTapTxttf,
      this.onTapTxtAbrollouts,
      this.onTapTxttf1,
      this.onTapTxtAbrollouts1,
      this.onTapTxttf2});

  ProgressItemModel progressItemModelObj;

  var controller = Get.find<ProgressController>();

  VoidCallback? onTapTxtWorkout;

  VoidCallback? onTapTxtSets;

  VoidCallback? onTapTxtDeadlift;

  VoidCallback? onTapTxttf;

  VoidCallback? onTapTxtAbrollouts;

  VoidCallback? onTapTxttf1;

  VoidCallback? onTapTxtAbrollouts1;

  VoidCallback? onTapTxttf2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          10.00,
        ),
        bottom: getVerticalSize(
          10.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "lbl_lift_like_lya".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      // style: AppStyle.textStyleInterbold14.copyWith(
                      //   fontSize: getFontSize(
                      //     14,
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: Text(
                      "msg_27_march_2022".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleInterregular10.copyWith(
                      //   fontSize: getFontSize(
                      //     10,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    14.00,
                  ),
                  bottom: getVerticalSize(
                    2.00,
                  ),
                ),
                child: Container(
                  height: getVerticalSize(
                    18.00,
                  ),
                  width: getHorizontalSize(
                    15.30,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgGroup987,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                315.00,
              ),
              margin: EdgeInsets.only(
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  0.30,
                ),
              ),
              decoration: BoxDecoration(
                // color: ColorConstant.bluegray900,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        30.00,
                      ),
                      width: getHorizontalSize(
                        315.00,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                315.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgRectangle844,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  9.00,
                                ),
                                right: getHorizontalSize(
                                  9.00,
                                ),
                                bottom: getVerticalSize(
                                  9.00,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtWorkout!();
                                    },
                                    child: Text(
                                      "lbl_workout".tr.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      // style: AppStyle.textStyleIntersemibold10
                                      //     .copyWith(
                                      //   fontSize: getFontSize(
                                      //     10,
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtSets!();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          218.00,
                                        ),
                                      ),
                                      child: Text(
                                        "lbl_sets".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        // style: AppStyle.textStyleIntersemibold10
                                        //     .copyWith(
                                        //   fontSize: getFontSize(
                                        //     10,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapTxtDeadlift!();
                          },
                          child: Text(
                            "lbl_deadlift".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxttf!();
                          },
                          child: Text(
                            "lbl_2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapTxtAbrollouts!();
                          },
                          child: Text(
                            "lbl_ab_roll_outs".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxttf1!();
                          },
                          child: Text(
                            "lbl".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapTxtAbrollouts1!();
                          },
                          child: Text(
                            "lbl_ab_roll_outs".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onTapTxttf2!();
                          },
                          child: Text(
                            "lbl".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium8.copyWith(
                            //   fontSize: getFontSize(
                            //     8,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
