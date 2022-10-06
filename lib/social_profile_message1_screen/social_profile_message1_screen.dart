import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/social_profile_message1_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileMessage1Screen
    extends GetWidget<SocialProfileMessage1Controller> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(
                      55.00,
                    ),
                    width: size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(),
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
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          30.00,
                                        ),
                                        right: getHorizontalSize(
                                          30.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              24.00,
                                            ),
                                            width: getHorizontalSize(
                                              24.00,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: SvgPicture.asset(
                                                ImageConstant.imgFrame2621,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              16.00,
                                            ),
                                            width: getHorizontalSize(
                                              4.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              bottom: getVerticalSize(
                                                1.00,
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
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                74.00,
                              ),
                              right: getHorizontalSize(
                                74.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    40,
                                  ),
                                  width: getHorizontalSize(
                                    40.00,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getSize(
                                              13.00,
                                            ),
                                          ),
                                          child: Image.asset(
                                            ImageConstant.imgEllipse1311,
                                            height: getVerticalSize(
                                              40,
                                            ),
                                            width: getHorizontalSize(
                                              40.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: getSize(
                                            8.00,
                                          ),
                                          width: getSize(
                                            8.00,
                                          ),
                                          margin: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              10.00,
                                            ),
                                            top: getVerticalSize(
                                              10.00,
                                            ),
                                            right: getHorizontalSize(
                                              4.00,
                                            ),
                                            bottom: getVerticalSize(
                                              1.60,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            // color: ColorConstant.greenA700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                4.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              // color: ColorConstant.whiteA700,
                                              width: getHorizontalSize(
                                                1.50,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    top: getVerticalSize(
                                      14.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_cheyenne".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    // style: AppStyle.textStyleIntersemibold14.copyWith(
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
                      top: getVerticalSize(
                        0.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/profilepic.png',
                          height: getVerticalSize(
                            80,
                          ),
                          width: getHorizontalSize(
                            80.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                        Text("\nGavin Turner\n\n",
                            // style: AppStyle.textStyleIntersemibold14.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // )
                  ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                30.00,
                              ),
                              right: getHorizontalSize(
                                30.00,
                              ),
                            ),
                            child: Text(
                              "lbl_december_20".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              // style:
                              //     AppStyle.textStylePoppinsregular141.copyWith(
                              //   fontSize: getFontSize(
                              //     14,
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                30.00,
                              ),
                              top: getVerticalSize(
                                20.00,
                              ),
                              right: getHorizontalSize(
                                135.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              // color: ColorConstant.bluegray900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  // color: ColorConstant.black90014,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    1,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      12.00,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      9.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_hi_how_are".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStylePoppinsregular14
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     14,
                                    //   ),
                                    // ),
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
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      9.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_10_02_p_m".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStylePoppinsregular10
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     10,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                100.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              right: getHorizontalSize(
                                30.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              // color: ColorConstant.bluegray900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  // color: ColorConstant.black90014,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    1,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16.00,
                                    ),
                                    top: getVerticalSize(
                                      11.00,
                                    ),
                                    bottom: getVerticalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Text(
                                    "msg_fine_how_about".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    // style: AppStyle.textStylePoppinsregular14
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     14,
                                    //   ),
                                    // ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    top: getVerticalSize(
                                      17.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.50,
                                    ),
                                    bottom: getVerticalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_10_02_p_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        // style: AppStyle
                                        //     .textStylePoppinsregular10
                                        //     .copyWith(
                                        //   fontSize: getFontSize(
                                        //     10,
                                        //   ),
                                        // ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            5.00,
                                          ),
                                          top: getVerticalSize(
                                            3.00,
                                          ),
                                          bottom: getVerticalSize(
                                            4.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            8.00,
                                          ),
                                          width: getHorizontalSize(
                                            7.50,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgGroup757,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                30.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              right: getHorizontalSize(
                                30.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              // color: ColorConstant.bluegray900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  // color: ColorConstant.black90014,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    1,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      12.00,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      9.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_fine".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStylePoppinsregular14
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     14,
                                    //   ),
                                    // ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      8.00,
                                    ),
                                    top: getVerticalSize(
                                      16.00,
                                    ),
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                    bottom: getVerticalSize(
                                      9.00,
                                    ),
                                  ),
                                  child: Text(
                                    "lbl_10_02_p_m".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStylePoppinsregular10
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     10,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Container(
                        //     height: getVerticalSize(
                        //       80.00,
                        //     ),
                        //     width: size.width,
                        //     margin: EdgeInsets.only(
                        //       top: getVerticalSize(
                        //         10.00,
                        //       ),
                        //     ),
                        //     child: Stack(
                        //       alignment: Alignment.center,
                        //       children: [
                        //         Align(
                        //           alignment: Alignment.centerLeft,
                        //           child: Container(
                        //             height: getVerticalSize(
                        //               80.00,
                        //             ),
                        //             width: getHorizontalSize(
                        //               375.00,
                        //             ),
                        //             child: SvgPicture.asset(
                        //               ImageConstant.imgRectangle24,
                        //               fit: BoxFit.fill,
                        //             ),
                        //           ),
                        //         ),
                        //         Align(
                        //           alignment: Alignment.center,
                        //           child: Padding(
                        //             padding: EdgeInsets.only(
                        //               left: getHorizontalSize(
                        //                 30.00,
                        //               ),
                        //               top: getVerticalSize(
                        //                 20.00,
                        //               ),
                        //               right: getHorizontalSize(
                        //                 30.00,
                        //               ),
                        //               bottom: getVerticalSize(
                        //                 20.00,
                        //               ),
                        //             ),
                        //             child: Row(
                        //               crossAxisAlignment: CrossAxisAlignment.center,
                        //               mainAxisSize: MainAxisSize.max,
                        //               children: [
                        //                 Padding(
                        //                   padding: EdgeInsets.only(
                        //                     top: getVerticalSize(
                        //                       10.00,
                        //                     ),
                        //                     bottom: getVerticalSize(
                        //                       9.98,
                        //                     ),
                        //                   ),
                        //                   child: Container(
                        //                     height: getVerticalSize(
                        //                       20.02,
                        //                     ),
                        //                     width: getHorizontalSize(
                        //                       16.00,
                        //                     ),
                        //                     child: SvgPicture.asset(
                        //                       ImageConstant.imgGroup1003,
                        //                       fit: BoxFit.fill,
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Padding(
                        //                   padding: EdgeInsets.only(
                        //                     left: getHorizontalSize(
                        //                       10.00,
                        //                     ),
                        //                   ),
                        //                   child: Container(
                        //                     height: getVerticalSize(
                        //                       40.00,
                        //                     ),
                        //                     width: getHorizontalSize(
                        //                       289.00,
                        //                     ),
                        //                     child: TextFormField(
                        //                       controller: controller.frame1427Controller,
                        //                       decoration: InputDecoration(
                        //                         hintText: "lbl_type_here".tr,
                        //                         hintStyle:
                        //                             AppStyle.textStyleSegoeUI14.copyWith(
                        //                           fontSize: getFontSize(
                        //                             14.0,
                        //                           ),
                        //                           color: ColorConstant.gray400,
                        //                         ),
                        //                         border: OutlineInputBorder(
                        //                           borderRadius: BorderRadius.circular(
                        //                             getHorizontalSize(
                        //                               34.00,
                        //                             ),
                        //                           ),
                        //                           borderSide: BorderSide.none,
                        //                         ),
                        //                         prefixIcon: Padding(
                        //                           padding: EdgeInsets.only(
                        //                             left: getHorizontalSize(
                        //                               10.00,
                        //                             ),
                        //                             right: getHorizontalSize(
                        //                               10.00,
                        //                             ),
                        //                           ),
                        //                           child: Container(
                        //                             height: getSize(
                        //                               16.00,
                        //                             ),
                        //                             width: getSize(
                        //                               16.00,
                        //                             ),
                        //                             child: SvgPicture.asset(
                        //                               ImageConstant.imgGroup1002,
                        //                               fit: BoxFit.contain,
                        //                             ),
                        //                           ),
                        //                         ),
                        //                         prefixIconConstraints: BoxConstraints(
                        //                           minWidth: getSize(
                        //                             16.00,
                        //                           ),
                        //                           minHeight: getSize(
                        //                             16.00,
                        //                           ),
                        //                         ),
                        //                         suffixIcon: Padding(
                        //                           padding: EdgeInsets.only(
                        //                             left: getHorizontalSize(
                        //                               10.00,
                        //                             ),
                        //                             right: getHorizontalSize(
                        //                               9.70,
                        //                             ),
                        //                           ),
                        //                           child: Container(
                        //                             height: getSize(
                        //                               24.59,
                        //                             ),
                        //                             width: getSize(
                        //                               24.59,
                        //                             ),
                        //                             child: SvgPicture.asset(
                        //                               ImageConstant.imgVector11,
                        //                               fit: BoxFit.contain,
                        //                             ),
                        //                           ),
                        //                         ),
                        //                         suffixIconConstraints: BoxConstraints(
                        //                           minWidth: getSize(
                        //                             24.59,
                        //                           ),
                        //                           minHeight: getSize(
                        //                             24.59,
                        //                           ),
                        //                         ),
                        //                         filled: true,
                        //                         fillColor: ColorConstant.whiteA70019,
                        //                         isDense: true,
                        //                         contentPadding: EdgeInsets.only(
                        //                           top: getVerticalSize(
                        //                             13.21,
                        //                           ),
                        //                           bottom: getVerticalSize(
                        //                             13.21,
                        //                           ),
                        //                         ),
                        //                       ),
                        //                       style: TextStyle(
                        //                         color: ColorConstant.gray400,
                        //                         fontSize: getFontSize(
                        //                           14.0,
                        //                         ),
                        //                         fontFamily: 'Segoe UI',
                        //                         fontWeight: FontWeight.w400,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Spacer(),
                        SizedBox(
                          height: getVerticalSize(
                            320.00,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            'assets/icons/chatbox.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        )
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
