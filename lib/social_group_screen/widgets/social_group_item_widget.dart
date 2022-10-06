import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../social_group1_screen/social_group1_screen.dart';
import '../controller/social_group_controller.dart';
import '../models/social_group_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialGroupItemWidget extends StatelessWidget {
  SocialGroupItemWidget(this.socialGroupItemModelObj);

  SocialGroupItemModel socialGroupItemModelObj;

  var controller = Get.find<SocialGroupController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(SocialGroup1Screen());
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
          // color: ColorConstant.tealA400,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          boxShadow: [
            BoxShadow(
              // color: ColorConstant.tealA400,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                2,
                2,
              ),
            ),
          ],
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
                  top: getVerticalSize(
                    5.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          10.00,
                        ),
                        top: getVerticalSize(
                          5.00,
                        ),
                        bottom: getVerticalSize(
                          3.00,
                        ),
                      ),
                      child: Text(
                        "lbl_workout_squad".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white),
                        // style: AppStyle.textStyleIntersemibold14.copyWith(
                        //   fontSize: getFontSize(
                        //     14,
                        //   ),
                        // ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        // color: ColorConstant.redA200,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12.50,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                7.00,
                              ),
                              top: getVerticalSize(
                                7.00,
                              ),
                              right: getHorizontalSize(
                                6.00,
                              ),
                              bottom: getVerticalSize(
                                6.00,
                              ),
                            ),
                            child: Text(
                              "lbl_01".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                              // style: AppStyle.textStyleIntersemibold10.copyWith(
                              //   fontSize: getFontSize(
                              //     10,
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
            Container(
              width: getHorizontalSize(
                315.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  7.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                // color: ColorConstant.whiteA700,
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
                      2,
                      2,
                    ),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getSize(
                              20.00,
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/ch2.png",
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              4.00,
                            ),
                            bottom: getVerticalSize(
                              21.00,
                            ),
                          ),
                          child: Text(
                            "msg_who_is_going_to".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                            // style: AppStyle.textStyleInterregular12.copyWith(
                            //   color: ColorConstant.black900,
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
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        10.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getVerticalSize(
                            25.00,
                          ),
                          width: getHorizontalSize(
                            85.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              60.00,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        12.50,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/ch2.png",
                                      height: getSize(
                                        25.00,
                                      ),
                                      width: getSize(
                                        25.00,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    right: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        12.50,
                                      ),
                                    ),
                                    child: Image.asset(
                                     "assets/images/ch2.png",
                                      height: getSize(
                                        25.00,
                                      ),
                                      width: getSize(
                                        25.00,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    right: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        12.50,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/ch2.png",
                                      height: getSize(
                                        25.00,
                                      ),
                                      width: getSize(
                                        25.00,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: getHorizontalSize(
                                      10.00,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        12.50,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/ch2.png",
                                      height: getSize(
                                        25.00,
                                      ),
                                      width: getSize(
                                        25.00,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              20.00,
                            ),
                            width: getHorizontalSize(
                              50.00,
                            ),
                            // decoration: AppDecoration.groupStylegray300cornerRadius,
                            child: Text(
                              "lbl_4_45_pm".tr,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                              // style: AppStyle.textStyleIntermedium81.copyWith(
                              //   color: ColorConstant.black900,
                              //   fontSize: getFontSize(
                              //     8,
                              //   ),
                              // ),
                            ),
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
    );
  }
}
