import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/add_bank_controller.dart';
import '../models/add_bank_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddBankItemWidget extends StatelessWidget {
  AddBankItemWidget(this.addBankItemModelObj);

  AddBankItemModel addBankItemModelObj;

  var controller = Get.find<AddBankController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        60.00,
      ),
      width: getHorizontalSize(
        315.00,
      ),
      margin: EdgeInsets.only(
        top: getVerticalSize(
          10.00,
        ),
        bottom: getVerticalSize(
          10.00,
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  15.00,
                ),
                top: getVerticalSize(
                  19.00,
                ),
                right: getHorizontalSize(
                  15.00,
                ),
                bottom: getVerticalSize(
                  19.00,
                ),
              ),
              child: Text(
                "lbl_alena_septimus".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 12),
                // style: AppStyle.textStyleInterregular12.copyWith(
                //   fontSize: getFontSize(
                //     12,
                //   ),
                // ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getVerticalSize(
                60.00,
              ),
              width: getHorizontalSize(
                315.00,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: getVerticalSize(
                        50.00,
                      ),
                      width: getHorizontalSize(
                        315.00,
                      ),
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                        border: Border.all(
                          color: Colors.blueGrey.shade900,
                          // color: ColorConstant.whiteA700,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          15.00,
                        ),
                        right: getHorizontalSize(
                          15.00,
                        ),
                        bottom: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          19.00,
                        ),
                        width: getHorizontalSize(
                          50.00,
                        ),
                        // decoration: AppDecoration.textStyleIntermedium147,
                        child: Text(
                          "lbl_name".tr,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          // style: AppStyle.textStyleIntermedium147.copyWith(
                          //   fontSize: getFontSize(
                          //     14,
                          //   ),
                          // ),
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
    );
  }
}
