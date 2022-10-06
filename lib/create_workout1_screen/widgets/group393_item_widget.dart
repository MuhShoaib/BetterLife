import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/create_workout1_controller.dart';
import '../models/group393_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class Group393ItemWidget extends StatelessWidget {
  Group393ItemWidget(this.group393ItemModelObj);

  Group393ItemModel group393ItemModelObj;

  var controller = Get.find<CreateWorkout1Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: size.width,
          decoration: BoxDecoration(
            // color: ColorConstant.gray900,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      19.00,
                    ),
                    bottom: getVerticalSize(
                      37.00,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      right: getHorizontalSize(
                        30.29,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getVerticalSize(
                            21.00,
                          ),
                          width: getHorizontalSize(
                            24.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgFrame2621,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              2.00,
                            ),
                            bottom: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Text(
                            "lbl_new_workout".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
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
                              2.00,
                            ),
                            bottom: getVerticalSize(
                              0.29,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              18.71,
                            ),
                            width: getSize(
                              18.71,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup981,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            // color: ColorConstant.bluegray900,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImageConstant.imgUnsplashh4i9g,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        15.00,
                      ),
                      top: getVerticalSize(
                        32.00,
                      ),
                      bottom: getVerticalSize(
                        33.00,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
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
    );
  }
}
