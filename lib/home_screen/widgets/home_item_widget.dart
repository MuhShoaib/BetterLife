import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj, {this.onTapGroup});

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
       Align(
        alignment: Alignment.center,
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
                        ImageConstant.imgMaskgroup,
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
                        "msg_recommended_mea".tr,
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
                    96.00,
                  ),
                  top: getVerticalSize(
                    23.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                  bottom: getVerticalSize(
                    22.00,
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
                    ImageConstant.imgVector23,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
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
                        ImageConstant.imgMaskgroup,
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
                        "msg_recommended_mea".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        // style: AppStyl+
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    96.00,
                  ),
                  top: getVerticalSize(
                    23.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                  bottom: getVerticalSize(
                    22.00,
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
                    ImageConstant.imgVector23,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],

    );
  }
}
