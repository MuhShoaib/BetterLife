import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/frame_1095_controller.dart';
import '../models/frame1094_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame1094ItemWidget extends StatelessWidget {
  Frame1094ItemWidget(this.frame1094ItemModelObj);

  Frame1094ItemModel frame1094ItemModelObj;

  var controller = Get.find<Frame1095Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getSize(
                          15.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgUnsplashcq5f6z,
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
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_paityn_herwitz".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            // style: AppStyle.textStyleIntermedium12.copyWith(
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
                              "lbl_10_42_am".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
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
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  280.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    35.00,
                  ),
                  top: getVerticalSize(
                    5.00,
                  ),
                ),
                child: Text(
                  "msg_lorem_ipsum_dol3".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  // style: AppStyle.textStyleInterregular10.copyWith(
                  //   fontSize: getFontSize(
                  //     10,
                  //   ),
                  // ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    35.00,
                  ),
                  top: getVerticalSize(
                    5.00,
                  ),
                  right: getHorizontalSize(
                    35.00,
                  ),
                ),
                child: Text(
                  "lbl_6_replies".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  // style: AppStyle.textStyleInterregular123.copyWith(
                  //   fontSize: getFontSize(
                  //     12,
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
