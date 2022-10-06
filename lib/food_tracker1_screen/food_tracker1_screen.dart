// import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'package:better_life/core/utils/image_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';

import '../food_tracker1_screen/widgets/food_tracker_item_widget.dart';
import 'controller/food_tracker1_controller.dart';
import 'models/food_tracker_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodTracker1Screen extends GetWidget<FoodTracker1Controller> {
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
                          // Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Container(
                          //     height: getVerticalSize(
                          //       726.74,
                          //     ),
                          //     width: size.width,
                          //     margin: EdgeInsets.only(
                          //       top: getVerticalSize(
                          //         43.00,
                          //       ),
                          //       bottom: getVerticalSize(
                          //         38.00,
                          //       ),
                          //     ),
                          //     child:

                          Column(
                            // alignment: Alignment.topLeft,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        46.00,
                                      ),
                                      width: getHorizontalSize(
                                        315.00,
                                      ),
                                      child: TextFormField(
                                        controller:
                                            controller.frame1065Controller,
                                        decoration: InputDecoration(
                                          hintText: "lbl_search_here".tr,
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          // hintStyle: AppStyle
                                          //     .textStyleInterregular125
                                          //     .copyWith(
                                          //   fontSize: getFontSize(
                                          //     12.0,
                                          //   ),
                                          //   color: ColorConstant.gray401,
                                          // ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              right: getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                18.71,
                                              ),
                                              width: getSize(
                                                18.71,
                                              ),
                                              child: SvgPicture.asset(
                                                "assets/images/search.svg",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          prefixIconConstraints: BoxConstraints(
                                            minWidth: getSize(
                                              18.71,
                                            ),
                                            minHeight: getSize(
                                              18.71,
                                            ),
                                          ),
                                          filled: true,
                                          // fillColor: ColorConstant.bluegray900,
                                          isDense: true,
                                          contentPadding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              15.03,
                                            ),
                                            bottom: getVerticalSize(
                                              14.32,
                                            ),
                                          ),
                                        ),
                                        style: TextStyle(
                                          // color: ColorConstant.gray401,
                                          fontSize: getFontSize(
                                            12.0,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .foodTracker1ModelObj
                                            .value
                                            .foodTrackerItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          FoodTrackerItemModel model =
                                              controller
                                                  .foodTracker1ModelObj
                                                  .value
                                                  .foodTrackerItemList[index];
                                          return FoodTrackerItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                ))));
  }
}
