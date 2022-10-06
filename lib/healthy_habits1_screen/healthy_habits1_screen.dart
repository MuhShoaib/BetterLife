import 'package:better_life/core/utils/image_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';

import 'controller/healthy_habits1_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthyHabits1Screen extends GetWidget<HealthyHabits1Controller> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeAppBar(),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Container(
                  //     width: double.infinity,
                  //     margin: EdgeInsets.only(
                  //       top: getVerticalSize(
                  //         43.00,
                  //       ),
                  //     ),
                  //     decoration: BoxDecoration(),
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Container(
                  //             width: size.width,
                  //             margin: EdgeInsets.only(
                  //               bottom: getVerticalSize(
                  //                 15.00,
                  //               ),
                  //             ),
                  //             child: Padding(
                  //               padding: EdgeInsets.only(
                  //                 left: getHorizontalSize(
                  //                   30.00,
                  //                 ),
                  //                 right: getHorizontalSize(
                  //                   30.00,
                  //                 ),
                  //               ),
                  //               child: Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 children: [
                  //                   Padding(
                  //                     padding: EdgeInsets.only(
                  //                       bottom: getVerticalSize(
                  //                         10.00,
                  //                       ),
                  //                     ),
                  //                     child: Container(
                  //                       height: getVerticalSize(
                  //                         24,
                  //                       ),
                  //                       width: getHorizontalSize(
                  //                         24.00,
                  //                       ),
                  //                       child: SvgPicture.asset(
                  //                         ImageConstant.imgFrame262,
                  //                         fit: BoxFit.fill,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Container(
                  //                     height: getVerticalSize(
                  //                       40,
                  //                     ),
                  //                     width: getHorizontalSize(
                  //                       38.56,
                  //                     ),
                  //                     child: SvgPicture.asset(
                  //                       ImageConstant.imgGroup21,
                  //                       fit: BoxFit.fill,
                  //                     ),
                  //                   ),
                  //                   ClipRRect(
                  //                     borderRadius: BorderRadius.circular(
                  //                       getSize(
                  //                         12.87,
                  //                       ),
                  //                     ),
                  //                     child: Image.asset(
                  //                       ImageConstant.imgEllipse6,
                  //                       height: getVerticalSize(
                  //                         40,
                  //                       ),
                  //                       width: getHorizontalSize(
                  //                         40.00,
                  //                       ),
                  //                       fit: BoxFit.fill,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
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
                    child: Image.asset(
                      ImageConstant.imgImage14,
                      height: getVerticalSize(
                        180.00,
                      ),
                      width: getHorizontalSize(
                        315.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        16.00,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            315.00,
                          ),
                          child: Text(
                            "msg_it_s_important".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: TextStyle(color:Colors.white,fontSize: 18),
                            // style: AppStyle.textStyleIntermedium18.copyWith(
                            //   fontSize: getFontSize(
                            //     18,
                            //   ),
                            // ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            315.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "msg_it_s_important2".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: TextStyle(color:Colors.white,fontSize: 12),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
