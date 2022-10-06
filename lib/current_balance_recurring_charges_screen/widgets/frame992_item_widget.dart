import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../controller/current_balance_recurring_charges_controller.dart';
import '../models/frame992_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Frame992ItemWidget extends StatelessWidget {
  Frame992ItemWidget(this.frame992ItemModelObj);

  Frame992ItemModel frame992ItemModelObj;

  var controller = Get.find<CurrentBalanceRecurringChargesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: getVerticalSize(
            180.00,
          ),
          width: getHorizontalSize(
            315.00,
          ),
          margin: EdgeInsets.only(
            left: getHorizontalSize(
              30.00,
            ),
            right: getHorizontalSize(
              20.00,
            ),
          ),
          decoration: BoxDecoration(
            // color: ColorConstant.tealA400,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
            boxShadow: [
              BoxShadow(
                // color: ColorConstant.black9000a,
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
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            // color: ColorConstant.tealA400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      180.00,
                    ),
                    width: getHorizontalSize(
                      315.00,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgMaskgroup14,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        15.00,
                      ),
                      top: getVerticalSize(
                        15.00,
                      ),
                      right: getHorizontalSize(
                        14.71,
                      ),
                      bottom: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "msg_dutch_bangla_ba".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntersemibold14.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "msg_1234_5428_3164".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntersemibold16.copyWith(
                            //   fontSize: getFontSize(
                            //     16,
                            //   ),
                            // ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "lbl_246".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntersemibold241.copyWith(
                            //   fontSize: getFontSize(
                            //     24,
                            //   ),
                            // ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              23.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_card_holder".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStyleIntersemibold121
                                    //     .copyWith(
                                    //   fontSize: getFontSize(
                                    //     12,
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
                                      "lbl_raju_m".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      // style: AppStyle.textStyleInterregular12
                                      //     .copyWith(
                                      //   fontSize: getFontSize(
                                      //     12,
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_expires".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle
                                        //     .textStyleIntersemibold121
                                        //     .copyWith(
                                        //   fontSize: getFontSize(
                                        //     12,
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
                                          "lbl_10_24".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle
                                          //     .textStyleInterregular12
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
                                      left: getHorizontalSize(
                                        38.00,
                                      ),
                                      top: getVerticalSize(
                                        14.44,
                                      ),
                                      bottom: getVerticalSize(
                                        0.62,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        19.94,
                                      ),
                                      width: getHorizontalSize(
                                        34.29,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup20,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}
