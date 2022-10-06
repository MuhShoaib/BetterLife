import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/food_tracker_controller.dart';
import '../models/group1191_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Group1191ItemWidget extends StatelessWidget {
  Group1191ItemWidget(this.group1191ItemModelObj, {this.onTapGroup});

  Group1191ItemModel group1191ItemModelObj;

  var controller = Get.find<FoodTrackerController>();

  VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapGroup!();
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            10.00,
          ),
          bottom: getVerticalSize(
            10.00,
          ),
        ),
        decoration: BoxDecoration(
          // color: ColorConstant.whiteA70019,
           color: Colors.blueGrey.shade900,
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
                  8.00,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(
                      54.00,
                    ),
                    width: getSize(
                      54.00,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/Frame1026.svg",
                      // ImageConstant.imgFrame1026,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        2.00,
                      ),
                      bottom: getVerticalSize(
                        3.00,
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
                              10.00,
                            ),
                          ),
                          child: Text(
                            "lbl_breakfast".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            // style: AppStyle.textStyleIntermedium141.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "lbl_1664_cal".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            // style: AppStyle.textStyleIntermedium18.copyWith(
                            //   fontSize: getFontSize(
                            //     18,
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
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  142.00,
                ),
                top: getVerticalSize(
                  25.00,
                ),
                right: getHorizontalSize(
                  15.00,
                ),
                bottom: getVerticalSize(
                  25.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  20.00,
                ),
                width: getHorizontalSize(
                  10.00,
                ),
                child: SvgPicture.asset(
                  //ImageConstant.imgVector231,
                  "assets/images/Vector23.svg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
