import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/home1_controller.dart';
import '../models/home1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Home1ItemWidget extends StatelessWidget {
  Home1ItemWidget(this.home1ItemModelObj, {this.onTapGroup});

  Home1ItemModel home1ItemModelObj;

  var controller = Get.find<Home1Controller>();

  VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapGroup!();
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            7.50,
          ),
          bottom: getVerticalSize(
            7.50,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade900,
          //color: ColorConstant.whiteA70019,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              //color: ColorConstant.black90005,
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
                  20.00,
                ),
                top: getVerticalSize(
                  17.00,
                ),
                bottom: getVerticalSize(
                  19.00,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        3.00,
                      ),
                      bottom: getVerticalSize(
                        0.20,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        20.80,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgGroupa,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        16.00,
                      ),
                    ),
                    child: Text(
                      "lbl_physical_health".tr,
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleIntermedium16.copyWith(
                      //   fontSize: getFontSize(
                      //     16,
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
                  95.00,
                ),
                top: getVerticalSize(
                  21.00,
                ),
                right: getHorizontalSize(
                  16.00,
                ),
                bottom: getVerticalSize(
                  19.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  20.00,
                ),
                width: getHorizontalSize(
                  10.00,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgVector23a,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
