import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/social_profile_followers_controller.dart';
import '../models/social_profile_followers_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialProfileFollowersItemWidget extends StatelessWidget {
  SocialProfileFollowersItemWidget(this.socialProfileFollowersItemModelObj,
      {this.onTapBtnMessage});

  SocialProfileFollowersItemModel socialProfileFollowersItemModelObj;

  var controller = Get.find<SocialProfileFollowersController>();

  VoidCallback? onTapBtnMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        bottom: getVerticalSize(
          5.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  5.00,
                ),
                right: getHorizontalSize(
                  5.00,
                ),
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getSize(
                            17.50,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgUnsplashrdcewh,
                          height: getSize(
                            35.00,
                          ),
                          width: getSize(
                            35.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            11.00,
                          ),
                        ),
                        child: Text(
                          "lbl_marilyn_vetrovs".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          // style: AppStyle.textStyleIntermedium10.copyWith(
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
                        5.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        onTapBtnMessage!();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          25.00,
                        ),
                        width: getHorizontalSize(
                          75.00,
                        ),
                        // decoration: AppDecoration.textStyleIntermedium102,
                        child: Text(
                          "lbl_message".tr,
                          textAlign: TextAlign.left,
                          // style: AppStyle.textStyleIntermedium102.copyWith(
                          //   fontSize: getFontSize(
                          //     10,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              325.00,
            ),
            margin: EdgeInsets.only(
              top: getVerticalSize(
                5.00,
              ),
            ),
            decoration: BoxDecoration(
              // color: ColorConstant.whiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
