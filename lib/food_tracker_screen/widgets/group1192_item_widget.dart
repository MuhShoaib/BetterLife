import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/food_tracker_controller.dart';
import '../models/group1192_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Group1192ItemWidget extends StatelessWidget {
  Group1192ItemWidget(this.group1192ItemModelObj);

  Group1192ItemModel group1192ItemModelObj;

  var controller = Get.find<FoodTrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(
            top: getVerticalSize(
              10.00,
            ),
            bottom: getVerticalSize(
              10.00,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(

                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
                child: SvgPicture.asset(
                  // ImageConstant.imgFrame1032,
                  "assets/images/Frame1032.svg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        225.00,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "lbl_carbohydrates".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            // style: AppStyle.textStyleIntermedium141.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // ),
                          ),
                          Text(
                            "lbl_67".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white),
                            // style: AppStyle.textStyleIntermedium141.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          18.00,
                        ),
                      ),
                      child: Container(

                        height: getVerticalSize(
                          5.00,
                        ),
                        width: getHorizontalSize(
                          225.00,
                        ),
                        decoration: BoxDecoration(

                          // color: ColorConstant.whiteA70019,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              34.00,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              34.00,
                            ),
                          ),
                          child: LinearProgressIndicator(
                            value: 0.67,
                            // backgroundColor: ColorConstant.whiteA70019,
                             valueColor: AlwaysStoppedAnimation<Color>(
                               //ColorConstant.tealA400,
                               kPrimaryColor
                             ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
