import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/create_workout1_controller.dart';
import '../models/group394_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Group394ItemWidget extends StatelessWidget {
  Group394ItemWidget(this.group394ItemModelObj);

  Group394ItemModel group394ItemModelObj;

  var controller = Get.find<CreateWorkout1Controller>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          44.00,
        ),
        bottom: getVerticalSize(
          44.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: getVerticalSize(
              80.00,
            ),
            width: size.width,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      80.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              80.00,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              // color: ColorConstant.bluegray900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Image.asset(
                              ImageConstant.imgUnsplashh4i9g,
                              height: getSize(
                                80.00,
                              ),
                              width: getSize(
                                80.00,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        20.00,
                      ),
                      top: getVerticalSize(
                        31.00,
                      ),
                      right: getHorizontalSize(
                        20.00,
                      ),
                      bottom: getVerticalSize(
                        31.00,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              1.00,
                            ),
                            bottom: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Text(
                            "lbl_ab_roll_outs".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntersemibold121.copyWith(
                            //   fontSize: getFontSize(
                            //     12,
                            //   ),
                            // ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              170.00,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              18.00,
                            ),
                            width: getSize(
                              18.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgComponent9,
                              fit: BoxFit.fill,
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
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: size.width,
            decoration: BoxDecoration(
              // color: ColorConstant.whiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
