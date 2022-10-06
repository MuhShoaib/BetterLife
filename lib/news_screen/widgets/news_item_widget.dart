import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/news_controller.dart';
import '../models/news_item_model.dart';
// import 'package:better_life/core//app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class NewsItemWidget extends StatelessWidget {
  NewsItemWidget(this.newsItemModelObj, {this.onTapGroup});

  NewsItemModel newsItemModelObj;

  var controller = Get.find<NewsController>();

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  15.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Image.asset(
                "assets/images/news.png",
                //ImageConstant.imgUnsplashuwfoa8,
                height: getVerticalSize(
                  170.00,
                ),
                width: getHorizontalSize(
                  279.00,
                ),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  295.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    15.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "msg_lorem_ipsum_dol5".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                    style:TextStyle(color: Colors.white,fontSize: 14)
                  // style: AppStyle.textStyleIntermedium141.copyWith(
                  //   fontSize: getFontSize(
                  //     14,
                  //   ),
                  // ),
                ),
              ),
            ),
            Padding(
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
                          //ImageConstant.imgUnsplashrm6zs,
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
                                  style:TextStyle(color: Colors.white,fontSize: 12)
                                // style: AppStyle.textStyleIntermedium12.copyWith(
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
                              style:TextStyle(color: Colors.white,fontSize: 12)
                              // style: AppStyle.textStyleInterregular12.copyWith(
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
                      //ImageConstant.imgFrame318,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
