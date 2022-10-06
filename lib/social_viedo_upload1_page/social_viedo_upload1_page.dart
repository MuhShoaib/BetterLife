import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'controller/social_viedo_upload1_controller.dart';
import 'models/social_viedo_upload1_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class SocialViedoUpload1Page extends StatelessWidget {
  SocialViedoUpload1Controller controller =
      Get.put(SocialViedoUpload1Controller(SocialViedoUpload1Model().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(30.00),
                right: getHorizontalSize(30.00)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(24.00),
                            width: getHorizontalSize(110.00),
                            // decoration: AppDecoration.textStyleIntermedium103,
                            child: Text("msg_performance_ski".tr,
                                textAlign: TextAlign.center,
                                // style: AppStyle.textStyleIntermedium103
                                //     .copyWith(fontSize: getFontSize(10))
                            )),
                        Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(24.00),
                            width: getHorizontalSize(47.00),
                            // decoration: AppDecoration.textStyleIntermedium103,
                            child: Text("lbl_sport".tr,

                                textAlign: TextAlign.center,
                                // style: AppStyle.textStyleIntermedium103
                                //     .copyWith(fontSize: getFontSize(10))
                            )),
                        Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(24.00),
                            width: getHorizontalSize(138.00),
                            // decoration: AppDecoration.textStyleIntermedium103,
                            child: Text("msg_transportation".tr,
                                textAlign: TextAlign.center,
                                // style: AppStyle.textStyleIntermedium103
                                //     .copyWith(fontSize: getFontSize(10))
                            ))
                      ]),
                  Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(10.00),
                          right: getHorizontalSize(10.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(24.00),
                                width: getHorizontalSize(57.00),
                                // decoration:
                                //     AppDecoration.textStyleIntermedium103,
                                child: Text("lbl_gaming".tr,
                                    textAlign: TextAlign.center,
                                    // style: AppStyle.textStyleIntermedium103
                                    //     .copyWith(fontSize: getFontSize(10))
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(103.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_fashion_beaut".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(107.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_outdoor_activit".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(10.00),
                          right: getHorizontalSize(10.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(24.00),
                                width: getHorizontalSize(98.00),
                                // decoration:
                                //     AppDecoration.textStyleIntermedium103,
                                child: Text("msg_fitness_healt".tr,
                                    textAlign: TextAlign.center,
                                    // style: AppStyle.textStyleIntermedium103
                                    //     .copyWith(fontSize: getFontSize(10))
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(51.00),
                                    // decoration:
                                        // AppDecoration.textStyleIntermedium103,
                                    child: Text("lbl_dance".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(118.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_science_educa".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(10.00),
                          right: getHorizontalSize(10.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(24.00),
                                width: getHorizontalSize(88.00),
                                // decoration:
                                //     AppDecoration.textStyleIntermedium103,
                                child: Text("lbl_entertainment".tr,
                                    textAlign: TextAlign.center,
                                    // style: AppStyle.textStyleIntermedium103
                                    //     .copyWith(fontSize: getFontSize(10))
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(99.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_professional_li".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(64.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("lbl_daily_life".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )))
                          ])),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: getVerticalSize(10.00),
                              right: getHorizontalSize(12.00)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(77.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("lbl_pop_culture".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )),
                                Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(107.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_celebrity_accou".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )),
                                Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(99.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("msg_oddly_satisfyin".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))
                              ]))),
                  Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(10.00),
                          right: getHorizontalSize(10.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(24.00),
                                width: getHorizontalSize(52.00),
                                // decoration:
                                //     AppDecoration.textStyleIntermedium103,
                                child: Text("lbl_family".tr,
                                    textAlign: TextAlign.center,
                                    // style: AppStyle.textStyleIntermedium103
                                    //     .copyWith(fontSize: getFontSize(10))
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(53.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("lbl_animal".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(10.00)),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(50.00),
                                    // decoration:
                                    //     AppDecoration.textStyleIntermedium103,
                                    child: Text("lbl_travel".tr,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium103
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    )))
                          ])),
                  GestureDetector(
                      onTap: () {
                        onTapFrame1466();
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: getVerticalSize(119.00)),
                          decoration: BoxDecoration(
                              // color: ColorConstant.tealA400,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              boxShadow: [
                                BoxShadow(
                                    // color: ColorConstant.tealA40033,
                                    spreadRadius: getHorizontalSize(2.00),
                                    blurRadius: getHorizontalSize(2.00),
                                    offset: Offset(0, 4))
                              ]),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(121.00),
                                        top: getVerticalSize(19.50),
                                        bottom: getVerticalSize(18.50)),
                                    child: Container(
                                        height: getVerticalSize(12.00),
                                        width: getHorizontalSize(1.00),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgVector58,
                                            fit: BoxFit.fill))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(9.00),
                                        top: getVerticalSize(17.00),
                                        right: getHorizontalSize(120.00),
                                        bottom: getVerticalSize(16.00)),
                                    child: Text("lbl_post_now".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        // style: AppStyle.textStyleIntermedium141
                                        //     .copyWith(
                                        //         fontSize: getFontSize(14))
                                    ))
                              ])))
                ])));
  }

  onTapFrame1466() {
    // Get.toNamed(AppRoutes.socialScreen);
  }
}
