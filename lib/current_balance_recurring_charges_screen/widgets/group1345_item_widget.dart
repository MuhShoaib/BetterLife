import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../controller/current_balance_recurring_charges_controller.dart';
import '../models/group1345_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Group1345ItemWidget extends StatelessWidget {
  Group1345ItemWidget(this.group1345ItemModelObj);

  Group1345ItemModel group1345ItemModelObj;

  var controller = Get.find<CurrentBalanceRecurringChargesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        bottom: getVerticalSize(
          5.00,
        ),
      ),
      decoration: BoxDecoration(
        // color: ColorConstant.whiteA70019,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            // color: ColorConstant.black90005,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                10.00,
              ),
              bottom: getVerticalSize(
                10.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                  // decoration: AppDecoration.textStyleIntersemibold242,
                  child: Text(
                    "lbl3".tr,
                    textAlign: TextAlign.left,
                    // style: AppStyle.textStyleIntersemibold242.copyWith(
                    //   fontSize: getFontSize(
                    //     24,
                    //   ),
                    // ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      5.50,
                    ),
                    bottom: getVerticalSize(
                      5.50,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            5.00,
                          ),
                        ),
                        child: Text(
                          "lbl_in_5_days".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          // style: AppStyle.textStyleInterregular12.copyWith(
                          //   fontSize: getFontSize(
                          //     12,
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
                          "lbl_income".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                        //   style: AppStyle.textStyleIntermedium161.copyWith(
                        //     fontSize: getFontSize(
                        //       16,
                        //     ),
                        //   ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                99.00,
              ),
              top: getVerticalSize(
                24.00,
              ),
              right: getHorizontalSize(
                15.00,
              ),
              bottom: getVerticalSize(
                24.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      2.00,
                    ),
                    bottom: getVerticalSize(
                      1.00,
                    ),
                  ),
                  child: Text(
                    "lbl_2_500".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    // style: AppStyle.textStyleIntermedium161.copyWith(
                    //   fontSize: getFontSize(
                    //     16,
                    //   ),
                    // ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      15.00,
                    ),
                  ),
                  child: Container(
                    height: getVerticalSize(
                      22.00,
                    ),
                    width: getHorizontalSize(
                      4.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgFrame1254,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
