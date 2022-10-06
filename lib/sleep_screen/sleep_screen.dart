import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/widgets/appbar_with_back.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../sleep_screen/widgets/sleep_item_widget.dart';
import 'controller/sleep_controller.dart';
import 'models/sleep_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SleepScreen extends GetWidget<SleepController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                // color: ColorConstant.gray900,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // AppBarWithBack(),
                  HomeAppBar(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          30.00,
                        ),
                        top: getVerticalSize(
                          30.00,
                        ),
                        right: getHorizontalSize(
                          30.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_sleep_analysis".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 18),
                            // style: AppStyle.textStyleIntersemibold181.copyWith(
                            //   fontSize: getFontSize(
                            //     18,
                            //   ),
                            // ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                5.00,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Text(
                              "lbl_march_22_2022".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white,fontSize: 12),
                              // style: AppStyle.textStyleInterregular12.copyWith(
                              //   fontSize: getFontSize(
                              //     12,
                              //   ),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        58.00,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              91.61,
                            ),
                            right: getHorizontalSize(
                              91.61,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              30.00,
                            ),
                            width: getHorizontalSize(
                              30.78,
                            ),
                            child: SvgPicture.asset(
                              // ImageConstant.imgGroup7,
                              "assets/images/moom.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                25.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_1h_26_m_30s".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: kPrimaryColor,fontSize: 36,fontWeight: FontWeight.bold),
                                    // style: AppStyle.textStyleInterbold36.copyWith(
                                    //   fontSize: getFontSize(
                                    //     36,
                                    //   ),
                                    // ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      61.50,
                                    ),
                                    top: getVerticalSize(
                                      5.00,
                                    ),
                                    right: getHorizontalSize(
                                      61.50,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_today_s_sleep".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,fontSize: 12),
                                    // style: AppStyle.textStyleInterregular14.copyWith(
                                    //   fontSize: getFontSize(
                                    //     14,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        59.00,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            143.00,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            19.00,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            19.00,
                          ),
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.sleepModelObj.value.sleepItemList.length,
                        itemBuilder: (context, index) {
                          SleepItemModel model =
                              controller.sleepModelObj.value.sleepItemList[index];
                          return SleepItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
