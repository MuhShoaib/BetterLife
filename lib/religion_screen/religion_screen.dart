import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';

import '../../core/widgets/appbar_with_back.dart';
import '../core/utils/image_constant.dart';
import 'controller/religion_controller.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReligionScreen extends GetWidget<ReligionController> {
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
                  //AppBarWithBack(),
                  HomeAppBar(),
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
                      "assets/images/rel.png",
                      //ImageConstant.imgUnsplashgpoh17,
                      height: getVerticalSize(
                        180.00,
                      ),
                      width: getHorizontalSize(
                        315.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
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
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dol7".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,fontSize: 18,)
                        // style: AppStyle.textStyleIntermedium18.copyWith(
                        //   fontSize: getFontSize(
                        //     18,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        315.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          30.00,
                        ),
                        top: getVerticalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          30.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dol6".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white,fontSize: 12,)
                        // style: AppStyle.textStyleInterregular12.copyWith(
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
          ),
        ),
      ),
    );
  }
}
