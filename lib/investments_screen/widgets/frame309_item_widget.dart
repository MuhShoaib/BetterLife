import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/investments_controller.dart';
import '../models/frame309_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame309ItemWidget extends StatelessWidget {
  Frame309ItemWidget(this.frame309ItemModelObj);

  Frame309ItemModel frame309ItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
        boxShadow: [
          BoxShadow(
            // color: ColorConstant.black90005,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                10.00,
              ),
              bottom: getVerticalSize(
                10.00,
              ),
            ),
            child: Image.asset(
              ImageConstant.imgEthereumfounda1,
              height: getSize(
                50.00,
              ),
              width: getSize(
                50.00,
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_ethereum".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  // style: AppStyle.textStyleIntermedium16.copyWith(
                  //   fontSize: getFontSize(
                  //     16,
                  //   ),
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      5.00,
                    ),
                  ),
                  child: Text(
                    "lbl_eth".tr,
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
                36.81,
              ),
              top: getVerticalSize(
                12.00,
              ),
              right: getHorizontalSize(
                9.81,
              ),
              bottom: getVerticalSize(
                11.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_15_664".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  // style: AppStyle.textStyleIntermedium16.copyWith(
                  //   fontSize: getFontSize(
                  //     16,
                  //   ),
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      5.00,
                    ),
                  ),
                  child: Text(
                    "lbl_3_69".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    // style: AppStyle.textStyleIntermedium123.copyWith(
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
    );
  }
}
