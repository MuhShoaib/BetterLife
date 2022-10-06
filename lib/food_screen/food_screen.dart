import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../../core/widgets/home_appbar.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/routes.dart';
import '../food_screen/widgets/food_item_widget.dart';
import 'controller/food_controller.dart';
import 'models/food_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodScreen extends GetWidget<FoodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            // backgroundColor: ColorConstant.gray900,
            backgroundColor: kBackgroundColor,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(),
                        // decoration: BoxDecoration(color: ColorConstant.gray900),
                        // decoration: BoxDecoration(color:Colors.grey.shade900),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              HomeAppBar(),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(30.00),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Text(
                                              "msg_recommended_mea".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(color:Colors.white,fontSize: 18,fontWeight:FontWeight.bold),
                                              // style: AppStyle.textStyleIntersemibold18
                                              //     .copyWith(
                                              //         fontSize: getFontSize(18))
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(15.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [

                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              15.00)),
                                                      decoration: BoxDecoration(
                                                          color: Colors.blueGrey.shade900,
                                                          // color:
                                                          //     ColorConstant.whiteA70019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00))),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          // Get.toNamed(
                                                          //     AppRoutes.recipeScreen);
                                                        },
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                    left: getHorizontalSize(
                                                                        8.00),
                                                                  ),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                            getVerticalSize(50.00),
                                                                            width: getHorizontalSize(50.00),
                                                                            child: SvgPicture.asset("assets/images/meal.svg", fit: BoxFit.fill)),
                                                                        Padding(
                                                                            padding:
                                                                            EdgeInsets.only(
                                                                              left: getHorizontalSize(20.00),
                                                                              right: getHorizontalSize(20.00),
                                                                              // top: getVerticalSize(
                                                                              //     16.00),
                                                                              bottom: getVerticalSize(16.00),
                                                                            ),
                                                                            child: Text(
                                                                              "lbl_meal_9".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: TextStyle(color:Colors.white),
                                                                              // style: AppStyle
                                                                              //     .textStyleIntermedium12
                                                                              //     .copyWith(
                                                                              //         fontSize: getFontSize(14))
                                                                            ))
                                                                      ])),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                    // top: getVerticalSize(
                                                                    //     15.00),
                                                                      right: getHorizontalSize(10.00)),
                                                                  child: Container(
                                                                      alignment: Alignment.center,
                                                                      height: getVerticalSize(35.00),
                                                                      width: getHorizontalSize(75.00),
                                                                      decoration: BoxDecoration(
                                                                          color: kPrimaryColor,
                                                                          borderRadius: BorderRadius.circular(30)
                                                                      ),
                                                                      // decoration:
                                                                      //     AppDecoration
                                                                      //         .textStyleIntermedium125,
                                                                      child: Text(
                                                                        "lbl_recipe"
                                                                            .tr,
                                                                        textAlign:
                                                                        TextAlign.left,
                                                                        style: TextStyle(color:Colors.white),
                                                                        // style: AppStyle
                                                                        //     .textStyleIntermedium125
                                                                        //     .copyWith(
                                                                        //         fontSize:
                                                                        //             getFontSize(12))
                                                                      )))
                                                            ]),
                                                      )),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              15.00)),
                                                      decoration: BoxDecoration(
                                                          //color: Colors.grey.shade800,

                                                          color: Colors.blueGrey.shade900,
                                                        // color:
                                                          //     ColorConstant.whiteA70019,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00))),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          // Get.toNamed(
                                                          //     AppRoutes.recipeScreen);
                                                        },
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: getHorizontalSize(
                                                                        8.00),
                                                                  ),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(50.00),
                                                                            width: getHorizontalSize(50.00),
                                                                            child: SvgPicture.asset("assets/images/meal.svg", fit: BoxFit.fill)),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              left: getHorizontalSize(20.00),
                                                                              right: getHorizontalSize(20.00),
                                                                              // top: getVerticalSize(
                                                                              //     16.00),
                                                                              bottom: getVerticalSize(16.00),
                                                                            ),
                                                                            child: Text(
                                                                              "lbl_meal_9".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: TextStyle(color:Colors.white),
                                                                              // style: AppStyle
                                                                              //     .textStyleIntermedium12
                                                                              //     .copyWith(
                                                                              //         fontSize: getFontSize(14))
                                                                            ))
                                                                      ])),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      // top: getVerticalSize(
                                                                      //     15.00),
                                                                      right: getHorizontalSize(10.00)),
                                                                  child: Container(
                                                                      alignment: Alignment.center,
                                                                      height: getVerticalSize(35.00),
                                                                      width: getHorizontalSize(75.00),
                                                                      decoration: BoxDecoration(
                                                                        color: kPrimaryColor,
                                                                        borderRadius: BorderRadius.circular(30)
                                                                      ),
                                                                      // decoration:
                                                                      //     AppDecoration
                                                                      //         .textStyleIntermedium125,
                                                                      child: Text(
                                                                        "lbl_recipe"
                                                                            .tr,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style: TextStyle(color:Colors.white),
                                                                        // style: AppStyle
                                                                        //     .textStyleIntermedium125
                                                                        //     .copyWith(
                                                                        //         fontSize:
                                                                        //             getFontSize(12))
                                                                      )))
                                                            ]),
                                                      )),
                                                ]))
                                      ]))
                            ]))))));
  }

  onTapBtnRecipe() {
    // Get.toNamed(AppRoutes.recipeScreen);
  }
}
