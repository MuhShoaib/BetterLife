import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/food_controller.dart';
import '../models/food_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class FoodItemWidget extends StatelessWidget {
  FoodItemWidget(this.foodItemModelObj);

  FoodItemModel foodItemModelObj;

  var controller = Get.find<FoodController>();

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
        top: getVerticalSize(
          7.50,
        ),
        bottom: getVerticalSize(
          7.50,
        ),
      ),
      decoration: BoxDecoration(
        // color: ColorConstant.whiteA70019,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                8.00,
              ),
              top: getVerticalSize(
                8.00,
              ),
              bottom: getVerticalSize(
                7.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgMaskgroup5,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      10.00,
                    ),
                    top: getVerticalSize(
                      16.00,
                    ),
                    bottom: getVerticalSize(
                      19.00,
                    ),
                  ),
                  child: Text(
                    "lbl_meal_1".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    // style: AppStyle.textStyleIntermedium12.copyWith(
                    //   fontSize: getFontSize(
                    //     12,
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
                80.00,
              ),
              top: getVerticalSize(
                25.00,
              ),
              right: getHorizontalSize(
                28.00,
              ),
              bottom: getVerticalSize(
                25.00,
              ),
            ),
            child: Text(
              "lbl_recipe".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.textStyleIntermedium12.copyWith(
              //   fontSize: getFontSize(
              //     12,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
