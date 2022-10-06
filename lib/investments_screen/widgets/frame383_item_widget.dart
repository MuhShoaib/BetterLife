import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/investments_controller.dart';
import '../models/frame383_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame383ItemWidget extends StatelessWidget {
  Frame383ItemWidget(this.frame383ItemModelObj);

  Frame383ItemModel frame383ItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        209.00,
      ),
      width: getHorizontalSize(
        315.00,
      ),
      margin: EdgeInsets.only(
        top: getVerticalSize(
          68.00,
        ),
        bottom: getVerticalSize(
          68.00,
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    ImageConstant.imgUnsplashtxkg2,
                    height: getVerticalSize(
                      209.00,
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
                      10.00,
                    ),
                    top: getVerticalSize(
                      12.00,
                    ),
                    right: getHorizontalSize(
                      9.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          296.00,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            13.00,
                          ),
                          top: getVerticalSize(
                            27.00,
                          ),
                          right: getHorizontalSize(
                            12.00,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "lbl_nft_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  // style: AppStyle.textStyleRobotoromansemibold16
                                  //     .copyWith(
                                  //   fontSize: getFontSize(
                                  //     16,
                                  //   ),
                                  // ),
                                ),
                                Text(
                                  "lbl_4_10_eth".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  // style: AppStyle.textStyleRobotoromansemibold16
                                  //     .copyWith(
                                  //   fontSize: getFontSize(
                                  //     16,
                                  //   ),
                                  // ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  5.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getSize(
                                            15.00,
                                          ),
                                        ),
                                        child: Image.asset(
                                          ImageConstant.imgEllipse784,
                                          height: getSize(
                                            30.00,
                                          ),
                                          width: getSize(
                                            30.00,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            5.00,
                                          ),
                                          top: getVerticalSize(
                                            8.00,
                                          ),
                                          bottom: getVerticalSize(
                                            8.00,
                                          ),
                                        ),
                                        child: Text(
                                          "lbl_user_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle
                                          //     .textStyleRobotoromanregular12
                                          //     .copyWith(
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
                                        8.00,
                                      ),
                                      bottom: getVerticalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_15_664".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      // style: AppStyle
                                      //     .textStyleRobotoromansemibold12
                                      //     .copyWith(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  10.00,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: getVerticalSize(
                  25.00,
                ),
                width: getHorizontalSize(
                  95.00,
                ),
                // decoration: AppDecoration.textStyleIntermedium126,
                child: Text(
                  "lbl_05h_40m_14s".tr,
                  textAlign: TextAlign.left,
                  // style: AppStyle.textStyleIntermedium126.copyWith(
                  //   fontSize: getFontSize(
                  //     12,
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
