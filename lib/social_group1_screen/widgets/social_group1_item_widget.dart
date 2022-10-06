import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/social_group1_controller.dart';
import '../models/social_group1_item_model.dart';
// import 'package:better_life/core/app_exp/ort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SocialGroup1ItemWidget extends StatelessWidget {
  SocialGroup1ItemWidget(this.socialGroup1ItemModelObj);

  SocialGroup1ItemModel socialGroup1ItemModelObj;

  var controller = Get.find<SocialGroup1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      5.00,
                    ),
                  ),
                  child: Row(
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
                          "assets/images/ch2.png",
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      13.00,
                    ),
                    right: getHorizontalSize(
                      30.00,
                    ),
                    bottom: getVerticalSize(
                      8.00,
                    ),
                  ),
                  child: Container(
                    height: getSize(
                      14.00,
                    ),
                    width: getSize(
                      14.00,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/ch2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
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
      ),
    );
  }
}
