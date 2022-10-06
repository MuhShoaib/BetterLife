import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/journal_controller.dart';
import '../models/journal_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class JournalItemWidget extends StatelessWidget {
  JournalItemWidget(this.journalItemModelObj);

  JournalItemModel journalItemModelObj;

  var controller = Get.find<JournalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        bottom: getVerticalSize(
          5.00,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                15.00,
              ),
              width: getHorizontalSize(
                295.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_08_april_2022".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleIntermedium12.copyWith(
                      //   fontSize: getFontSize(
                      //     12,
                      //   ),
                      // ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          10.00,
                        ),
                        bottom: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          12.00,
                        ),
                        width: getHorizontalSize(
                          6.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector25,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                8.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
            ),
            child: Text(
              "msg_lorem_ipsum_dol4".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.textStyleInterregular12.copyWith(
              //   fontSize: getFontSize(
              //     12,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
