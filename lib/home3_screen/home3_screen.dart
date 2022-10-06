import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/widgets/home_appbar.dart';
import '../core/utils/math_utils.dart';
import '../core/utils/routes.dart';
import '../home3_screen/widgets/home2_item_widget.dart';
import 'controller/home3_controller.dart';
import 'models/home2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home3Screen extends GetWidget<Home3Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //  backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(),

                        //decoration: BoxDecoration(color: ColorConstant.gray900),
                        decoration: BoxDecoration(color: kBackgroundColor),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HomeAppBar(),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Text(
                                              "lbl_good_morning".tr,
                                              style: TextStyle(color: Colors.white,fontSize: 14),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,

                                              // style: AppStyle
                                              //     .textStyleIntermedium141
                                              //     .copyWith(
                                              //         fontSize:
                                              //             getFontSize(14))
                                              //
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(5.00)),
                                            child: Text(
                                              "msg_today_s_breakdo".tr,
                                              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              // style: AppStyle
                                              //     .textStyleIntersemibold18
                                              //     .copyWith(
                                              //         fontSize:
                                              //             getFontSize(18))
                                            ))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(30.00)),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(30.00)),
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(45.00),
                                                width:
                                                    getHorizontalSize(133.00),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: kPrimaryColor
                                                ),
                                                // decoration: AppDecoration
                                                //     .textStyleInterregular143,
                                                child: Text(
                                                  "lbl_mental_health".tr,
                                                  style: TextStyle(color: Colors.white,fontSize: 14),
                                                  textAlign: TextAlign.center,
                                                  // style: AppStyle
                                                  //     .textStyleInterregular143
                                                  //     .copyWith(
                                                  //         fontSize:
                                                  //             getFontSize(
                                                  //                 14))
                                                ))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnFinancialhealt();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(45.00),
                                                    width: getHorizontalSize(
                                                        146.00),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(30),
                                                        border: Border.all(color: kPrimaryColor)
                                                    ),
                                                    // decoration: AppDecoration
                                                    //     .textStyleInterregular141,
                                                    child: Text(
                                                      "msg_financial_healt".tr,
                                                      style: TextStyle(color: Colors.white),
                                                      textAlign:
                                                          TextAlign.center,
                                                      // style: AppStyle
                                                      //     .textStyleInterregular141
                                                      //     .copyWith(
                                                      //         fontSize:
                                                      //             getFontSize(
                                                      //                 14))
                                                    )))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnSocialhealth();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(45.00),
                                                    width: getHorizontalSize(
                                                        127.00),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(30),
                                                        border: Border.all(color: kPrimaryColor)
                                                    ),
                                                    // decoration: AppDecoration
                                                    //     .textStyleInterregular141,
                                                    child: Text(
                                                      "lbl_social_health".tr,
                                                      style: TextStyle(color: Colors.white),
                                                      textAlign:
                                                          TextAlign.center,

                                                      // style: AppStyle
                                                      //     .textStyleInterregular141
                                                      //     .copyWith(
                                                      //         fontSize:
                                                      //             getFontSize(
                                                      //                 14)))
                                                    ))))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(40.00),
                                          right: getHorizontalSize(30.00),
                                          bottom: getVerticalSize(215.00)),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller.home3ModelObj
                                              .value.home2ItemList.length,
                                          itemBuilder: (context, index) {
                                            Home2ItemModel model = controller
                                                .home3ModelObj
                                                .value
                                                .home2ItemList[index];
                                            return Home2ItemWidget(model,
                                                onTapGroup: onTapGroup);
                                          }))))
                            ]))))));
  }

  onTapGroup() {
    //Get.toNamed(AppRoutes.therapyScreen);
  }

  onTapBtnFinancialhealt() {
    //Get.toNamed(AppRoutes.home4Screen);
  }

  onTapBtnSocialhealth() {
    //Get.toNamed(AppRoutes.socialScreen);
  }
}
