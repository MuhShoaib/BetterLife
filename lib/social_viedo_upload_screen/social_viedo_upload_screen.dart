import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/social_viedo_upload_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialViedoUploadScreen extends GetWidget<SocialViedoUploadController> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        789.00,
                      ),
                      width: size.width,
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                96.00,
                              ),
                              width: size.width,
                              margin: EdgeInsets.only(
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(
                                    0.4999999493360541,
                                    -3.061614587526651e-17,
                                  ),
                                  end: Alignment(
                                    0.4999999493360547,
                                    0.8499999645352379,
                                  ),
                                  colors: [
                                    // ColorConstant.black900,
                                    // ColorConstant.black90000,
                                  ],
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          30.00,
                                        ),
                                        top: getVerticalSize(
                                          20.00,
                                        ),
                                        right: getHorizontalSize(
                                          30.00,
                                        ),
                                        bottom: getVerticalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Container(
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                789.00,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        789.00,
                                      ),
                                      width: size.width,
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset(
                                              ImageConstant.imgUnsplashl9zhig,
                                              height: getVerticalSize(
                                                789.00,
                                              ),
                                              width: getHorizontalSize(
                                                375.00,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              height: getVerticalSize(
                                                41.00,
                                              ),
                                              width: size.width,
                                              margin: EdgeInsets.only(
                                                bottom: getVerticalSize(
                                                  10.00,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment(
                                                    0.4999999493360541,
                                                    -3.061614587526651e-17,
                                                  ),
                                                  end: Alignment(
                                                    0.4999999493360547,
                                                    0.8499999645352379,
                                                  ),
                                                  colors: [
                                                    // ColorConstant.black90066,
                                                    // ColorConstant.black90000,
                                                  ],
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          30.00,
                                                        ),
                                                        top: getVerticalSize(
                                                          10.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          30.00,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          21.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          24.00,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgFrame2621,
                                                          fit: BoxFit.fill,
                                                        ),
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
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(
                                            0.4999999493360541,
                                            -3.061614587526651e-17,
                                          ),
                                          end: Alignment(
                                            0.4999999493360547,
                                            0.8499999645352379,
                                          ),
                                          colors: [
                                            // ColorConstant.black90066,
                                            // ColorConstant.black90000,
                                          ],
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                30.00,
                                              ),
                                              top: getVerticalSize(
                                                75.00,
                                              ),
                                              bottom: getVerticalSize(
                                                27.00,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                    ),
                                                    child: Image.asset(
                                                      ImageConstant
                                                          .imgUnsplashymoyc,
                                                      height: getSize(
                                                        30.00,
                                                      ),
                                                      width: getSize(
                                                        30.00,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      5.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "lbl_photos"
                                                        .tr
                                                        .toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    // style: AppStyle
                                                    //     .textStyleIntersemibold8
                                                    //     .copyWith(
                                                    //   fontSize: getFontSize(
                                                    //     8,
                                                    //   ),
                                                    //   letterSpacing: 0.40,
                                                    // ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                92.00,
                                              ),
                                              top: getVerticalSize(
                                                67.00,
                                              ),
                                              bottom: getVerticalSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                60.00,
                                              ),
                                              width: getSize(
                                                60.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgGroup951,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                94.00,
                                              ),
                                              top: getVerticalSize(
                                                75.00,
                                              ),
                                              right: getHorizontalSize(
                                                30.00,
                                              ),
                                              bottom: getVerticalSize(
                                                27.00,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        1.50,
                                                      ),
                                                      right: getHorizontalSize(
                                                        1.50,
                                                      ),
                                                    ),
                                                    child: Image.asset(
                                                      ImageConstant
                                                          .imgUnsplashtzcrfp,
                                                      height: getSize(
                                                        30.00,
                                                      ),
                                                      width: getSize(
                                                        30.00,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      5.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "lbl_videos"
                                                        .tr
                                                        .toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    // style: AppStyle
                                                    //     .textStyleIntersemibold8
                                                    //     .copyWith(
                                                    //   fontSize: getFontSize(
                                                    //     8,
                                                    //   ),
                                                    //   letterSpacing: 0.40,
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
                                ],
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
          ),
        ),
      ),
    );
  }
}
