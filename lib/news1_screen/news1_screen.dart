
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../core/widgets/home_appbar.dart';
import 'controller/news1_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class News1Screen extends GetWidget<News1Controller> {
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
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/news.png",
                         // ImageConstant.imgUnsplashuwfoa81,
                          height: getVerticalSize(
                            192.00,
                          ),
                          width: getHorizontalSize(
                            315.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              15.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        15.00,
                                      ),
                                    ),
                                    child: Image.asset(
                                     // ImageConstant.imgUnsplashrm6zs,
                                      "assets/images/n1.png",
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
                                            "lbl_bbc".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(color: Colors.white,fontSize: 12),
                                            // style:
                                            //     AppStyle.textStyleIntermedium12.copyWith(
                                            //   fontSize: getFontSize(
                                            //     12,
                                            //   ),
                                            // ),
                                          ),
                                        ),
                                        Text(
                                          "msg_12_april_2022".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.white,fontSize: 12),
                                          // style:
                                          //     AppStyle.textStyleInterregular12.copyWith(
                                          //   fontSize: getFontSize(
                                          //     12,
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: getSize(
                                  30.00,
                                ),
                                width: getSize(
                                  30.00,
                                ),
                                child: SvgPicture.asset(
                                  "assets/images/gr.svg",
                                 // ImageConstant.imgFrame318,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            315.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dol6".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white,fontSize: 12),
                            // style: AppStyle.textStyleInterregular12.copyWith(
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
          ),
        ),
      ),
    );
  }
}
