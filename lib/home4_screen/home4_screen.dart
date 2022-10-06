import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/widgets/home_appbar.dart';
import '../core/utils/math_utils.dart';
import '../home4_screen/widgets/home3_item_widget.dart';
import 'controller/home4_controller.dart';
import 'models/home3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home4Screen extends GetWidget<Home4Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: kBackgroundColor,
            //backgroundColor: ColorConstant.gray900,
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
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(176.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(10.00)),
                                                child: Text(
                                                  "lbl_good_morning".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 14),
                                                  // style: AppStyle.textStyleIntermedium141
                                                  //     .copyWith(fontSize: getFontSize(14))
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(5.00)),
                                                child: Text(
                                                  "msg_today_s_breakdo".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 18),
                                                  // style: AppStyle.textStyleIntersemibold18
                                                  //     .copyWith(fontSize: getFontSize(18))
                                                ))
                                          ]))),
                              // Padding(
                              //     padding: EdgeInsets.only(
                              //         left: getHorizontalSize(30.00),
                              //         top: getVerticalSize(30.00),
                              //         right: getHorizontalSize(30.00)),
                              //     child: Column(
                              //         mainAxisSize: MainAxisSize.min,
                              //         crossAxisAlignment: CrossAxisAlignment.start,
                              //         mainAxisAlignment: MainAxisAlignment.start,
                              //         children: [
                              //           Padding(
                              //               padding: EdgeInsets.only(
                              //                   right: getHorizontalSize(10.00)),
                              //               child: Text("lbl_good_morning".tr,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   // style: AppStyle.textStyleIntermedium141
                              //                   //     .copyWith(
                              //                   //         fontSize: getFontSize(14))
                              //
                              //
                              //               )),
                              //           Padding(
                              //               padding: EdgeInsets.only(
                              //                   top: getVerticalSize(5.00)),
                              //               child: Text("msg_today_s_breakdo".tr,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   // style: AppStyle.textStyleIntersemibold18
                              //                   //     .copyWith(fontSize: getFontSize(18))
                              //
                              //
                              //               ))
                              //         ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSpiritualhealt();
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(45.00),
                                                width: getHorizontalSize(133.00),

                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                  border: Border.all(
                                                      color: kPrimaryColor)),
                                                // decoration: AppDecoration
                                                //     .textStyleInterregular141,
                                                child: Text("msg_spiritual_healt".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                    // style: AppStyle
                                                    //     .textStyleInterregular141
                                                    //     .copyWith(
                                                    //         fontSize: getFontSize(14))
                                                    //

                                                ))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnMentalhealth();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(45.00),
                                                    width: getHorizontalSize(133.00),
                                                    // decoration: AppDecoration
                                                    //     .textStyleInterregular141,

                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(30),
                                                        border: Border.all(
                                                            color: kPrimaryColor)),
                                                    child: Text("lbl_mental_health".tr,
                                                        textAlign: TextAlign.center,

                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                        // style: AppStyle
                                                        //     .textStyleInterregular141
                                                        //     .copyWith(
                                                        //         fontSize:
                                                        //             getFontSize(14))
                                                        //


                                                    )))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00)),
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(45.00),
                                                width: getHorizontalSize(146.00),
                                                // decoration: AppDecoration
                                                //     .textStyleInterregular143,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(30),
                                                        color: kPrimaryColor),
                                                child: Text("msg_financial_healt".tr,
                                                    textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                    // style: AppStyle
                                                    //     .textStyleInterregular143
                                                    //     .copyWith(
                                                    //         fontSize: getFontSize(14))
                                                    //

                                                ))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00)),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBtnSocialhealth();
                                                },
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(45.00),
                                                    width: getHorizontalSize(127.00),
                                                    // decoration: AppDecoration
                                                    //     .textStyleInterregular141,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(30),
                                                        border: Border.all(
                                                            color: kPrimaryColor)),
                                                    child: Text("lbl_social_health".tr,
                                                        textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                        // style: AppStyle
                                                        //     .textStyleInterregular141
                                                        //     .copyWith(
                                                        //         fontSize:
                                                        //             getFontSize(14))



                                                    ))))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(40.00),
                                          right: getHorizontalSize(30.00),
                                          bottom: getVerticalSize(300.00)),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .home4ModelObj.value.home3ItemList.length,
                                          itemBuilder: (context, index) {
                                            Home3ItemModel model = controller
                                                .home4ModelObj.value.home3ItemList[index];
                                            return Home3ItemWidget(model,
                                                onTapGroup: onTapGroup);
                                          }))))
                            ]))))));
  }

  onTapGroup() {
    //Get.toNamed(AppRoutes.newsScreen);
  }

  onTapTxtSpiritualhealt() {
   // Get.toNamed(AppRoutes.home2Screen);
  }

  onTapBtnMentalhealth() {
   // Get.toNamed(AppRoutes.home3Screen);
  }

  onTapBtnSocialhealth() {
   // Get.toNamed(AppRoutes.socialScreen);
  }
}
