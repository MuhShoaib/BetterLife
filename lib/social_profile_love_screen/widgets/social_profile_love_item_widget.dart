import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/social_profile_love_controller.dart';
import '../models/social_profile_love_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class SocialProfileLoveItemWidget extends StatelessWidget {
  SocialProfileLoveItemWidget(this.socialProfileLoveItemModelObj);

  SocialProfileLoveItemModel socialProfileLoveItemModelObj;

  var controller = Get.find<SocialProfileLoveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        100.00,
      ),
      width: getSize(
        100.00,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              ImageConstant.imgUnsplashl9zhig1,
              height: getSize(
                100.00,
              ),
              width: getSize(
                100.00,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment(
                    8.326672684688674e-17,
                    5.412337245047638e-16,
                  ),
                  end: Alignment(
                    0.050000003671646365,
                    0.3050000087320812,
                  ),
                  colors: [
                    // ColorConstant.gray900D1,
                    // ColorConstant.gray90000,
                  ],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        5.00,
                      ),
                      top: getVerticalSize(
                        4.50,
                      ),
                      bottom: getVerticalSize(
                        88.50,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        7.00,
                      ),
                      width: getHorizontalSize(
                        8.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgVector9,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        2.00,
                      ),
                      top: getVerticalSize(
                        3.00,
                      ),
                      right: getHorizontalSize(
                        68.00,
                      ),
                      bottom: getVerticalSize(
                        87.00,
                      ),
                    ),
                    child: Text(
                      "lbl_2_6k".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      // style: AppStyle.textStyleIntermedium8.copyWith(
                      //   fontSize: getFontSize(
                      //     8,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
