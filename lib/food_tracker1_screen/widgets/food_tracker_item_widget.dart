import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/image_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/math_utils.dart';
import '../controller/food_tracker1_controller.dart';
import '../models/food_tracker_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodTrackerItemWidget extends StatelessWidget {
  FoodTrackerItemWidget(this.foodTrackerItemModelObj);

  FoodTrackerItemModel foodTrackerItemModelObj;

  var controller = Get.find<FoodTracker1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        left: getVerticalSize(
          20.00,
        ), right: getVerticalSize(
        20.00,
      ),

        bottom: getVerticalSize(
          5.00,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade900,
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
                5.00,
              ),
              top: getVerticalSize(
                5.00,
              ),
              bottom: getVerticalSize(
                5.00,
              ),
            ),
            child: Image.asset(
             // ImageConstant.imgUnsplashrswzp,
              "assets/images/unsplash.png",
              height: getSize(
                50.00,
              ),
              width: getSize(
                50.00,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                5.00,
              ),
              top: getVerticalSize(
                13.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
              bottom: getVerticalSize(
                12.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_bread".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                  // style: AppStyle.textStyleIntermedium141.copyWith(
                  //   fontSize: getFontSize(
                  //     14,
                  //   ),
                  // ),
                ),
                Container(
                  width: getHorizontalSize(
                    245.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      3.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            3.00,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_12_g".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white
                              ),
                              // style: AppStyle.textStyleInterregular10.copyWith(
                              //   fontSize: getFontSize(
                              //     10,
                              //   ),
                              // ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  15.00,
                                ),
                              ),
                              child: Text(
                                "lbl_120_kcal".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                                // style:
                                //     AppStyle.textStyleInterregular10.copyWith(
                                //   fontSize: getFontSize(
                                //     10,
                                //   ),
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "lbl_add".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: kPrimaryColor),
                        // style: A/
                      ),
                    ],
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
