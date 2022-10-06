import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/sleep_controller.dart';
import '../models/sleep_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SleepItemWidget extends StatelessWidget {
  SleepItemWidget(this.sleepItemModelObj);

  SleepItemModel sleepItemModelObj;

  var controller = Get.find<SleepController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       // color: ColorConstant.whiteA70019,
       color: Colors.blueGrey.shade900,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                34.00,
              ),
              top: getVerticalSize(
                20.00,
              ),
              right: getHorizontalSize(
                34.00,
              ),
            ),
            child: Container(
              height: getSize(
                40.00,
              ),
              width: getSize(
                40.00,
              ),
              child: SvgPicture.asset(
                //ImageConstant.imgFrame3276,
                "assets/images/moo.svg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                34.00,
              ),
              top: getVerticalSize(
                15.00,
              ),
              right: getHorizontalSize(
                34.00,
              ),
              bottom: getVerticalSize(
                20.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      14.50,
                    ),
                    right: getHorizontalSize(
                      14.50,
                    ),
                  ),
                  child: Text(
                    "lbl_23_00".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w200)
                    // style: AppStyle.textStyleIntermedium18.copyWith(
                    //   fontSize: getFontSize(
                    //     18,
                    //   ),
                    // ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "lbl_went_to_sleep".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                        style:TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w200)
                      // style: AppStyle.textStyleIntermedium12.copyWith(
                      //   fontSize: getFontSize(
                      //     12,
                      //   ),
                      // ),
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
