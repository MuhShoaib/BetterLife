import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../social_profile_followers_screen/widgets/social_profile_followers_item_widget.dart';
import 'controller/social_profile_followers_controller.dart';
import 'models/social_profile_followers_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileFollowersScreen
    extends GetWidget<SocialProfileFollowersController> {
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
                        // decoration: BoxDecoration(color: ColorConstant.gray900),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(57.00),
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(5.00)),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height: getVerticalSize(
                                                        57.00),
                                                    width: size.width,
                                                    decoration: BoxDecoration(),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: getHorizontalSize(
                                                                      30.00),
                                                                  top: getVerticalSize(
                                                                      17.00),
                                                                  right: getHorizontalSize(
                                                                      30.00),
                                                                  bottom: getVerticalSize(
                                                                      17.00)),
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      21.00),
                                                                  width: getHorizontalSize(
                                                                      24.00),
                                                                  child: GestureDetector(
                                                                      onTap: () {
                                                                        Get
                                                                            .back();
                                                                      },
                                                                      child: SvgPicture
                                                                          .asset(
                                                                          ImageConstant
                                                                              .imgFrame2621,
                                                                          fit: BoxFit
                                                                              .fill)))))
                                                    ]))),
                                            Align(
                                                alignment: Alignment
                                                    .bottomRight,
                                                child: Container(
                                                    width: size.width,
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            60.00),
                                                        top: getVerticalSize(
                                                            17.00),
                                                        right: getHorizontalSize(
                                                            30.00),
                                                        bottom: getVerticalSize(
                                                            17.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width: getHorizontalSize(
                                                            268.00),
                                                        child: TextFormField(
                                                            controller: controller
                                                                .group130Controller,
                                                            decoration: InputDecoration(
                                                                hintText: "lbl_search"
                                                                    .tr,
                                                                // hintStyle: AppStyle.textStyleInterregular10
                                                                //     .copyWith(fontSize: getFontSize(10.0), color: ColorConstant.whiteA700),
                                                                enabledBorder:
                                                                UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        // color: ColorConstant
                                                                        //     .whiteA70019,
                                                                        width: 1)),
                                                                focusedBorder:
                                                                UnderlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        // color: ColorConstant
                                                                        //     .whiteA70019,
                                                                        width: 1)),
                                                                prefixIcon: Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        left: getHorizontalSize(
                                                                            5.00),
                                                                        right: getHorizontalSize(
                                                                            10.00)),
                                                                    child: Container(
                                                                        height: getSize(
                                                                            14.00),
                                                                        width: getSize(
                                                                            14.00),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                            ImageConstant
                                                                                .imgVector4,
                                                                            fit: BoxFit
                                                                                .contain))),
                                                                prefixIconConstraints: BoxConstraints(
                                                                    minWidth: getSize(
                                                                        14.00),
                                                                    minHeight: getSize(
                                                                        14.00)),
                                                                isDense: true,
                                                                contentPadding: EdgeInsets
                                                                    .only(
                                                                    top: getVerticalSize(
                                                                        0.86),
                                                                    bottom: getVerticalSize(
                                                                        6.86))),
                                                            style: TextStyle(
                                                                // color: ColorConstant
                                                                //     .whiteA700,
                                                                fontSize: getFontSize(
                                                                    10.0),
                                                                fontFamily: 'Inter',
                                                                fontWeight: FontWeight
                                                                    .w400)))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(25.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(25.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapGroup1006();
                                                  },
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                left: getHorizontalSize(
                                                                    11.97),
                                                                right: getHorizontalSize(
                                                                    11.97)),
                                                            child: Container(
                                                                height: getVerticalSize(
                                                                    20.00),
                                                                width: getHorizontalSize(
                                                                    31.05),
                                                                child: SvgPicture
                                                                    .asset(
                                                                    ImageConstant
                                                                        .imgVector13,
                                                                    fit: BoxFit
                                                                        .fill))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: getVerticalSize(
                                                                        5.00)),
                                                                child: Text(
                                                                    "lbl_following"
                                                                        .tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    // style: AppStyle
                                                                    //     .textStyleIntermedium12
                                                                    //     .copyWith(
                                                                    //     fontSize: getFontSize(
                                                                    //         12))
                                                                )))
                                                      ])),
                                              Column(
                                                  mainAxisSize: MainAxisSize
                                                      .min,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .only(
                                                            left: getHorizontalSize(
                                                                11.97),
                                                            right: getHorizontalSize(
                                                                11.97)),
                                                        child: Container(
                                                            height: getVerticalSize(
                                                                20.00),
                                                            width: getHorizontalSize(
                                                                31.05),
                                                            child: SvgPicture
                                                                .asset(
                                                                ImageConstant
                                                                    .imgVector12,
                                                                fit: BoxFit
                                                                    .fill))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    5.00)),
                                                            child: Text(
                                                                "lbl_followers"
                                                                    .tr,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                // style: AppStyle
                                                                //     .textStyleIntermedium12
                                                                //     .copyWith(
                                                                //     fontSize: getFontSize(
                                                                //         12))
                                                            )))
                                                  ])
                                            ]),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(20.00)),
                                            child: Obx(() =>
                                                ListView.builder(
                                                    physics: BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: controller
                                                        .socialProfileFollowersModelObj
                                                        .value
                                                        .socialProfileFollowersItemList
                                                        .length,
                                                    itemBuilder: (context,
                                                        index) {
                                                      SocialProfileFollowersItemModel model =
                                                      controller
                                                          .socialProfileFollowersModelObj
                                                          .value
                                                          .socialProfileFollowersItemList[index];
                                                      return SocialProfileFollowersItemWidget(
                                                          model,
                                                          onTapBtnMessage: onTapBtnMessage);
                                                    })))
                                      ]))
                            ]))))));
  }

  onTapBtnMessage() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }

  onTapGroup1006() {
    // Get.toNamed(AppRoutes.socialProfileFriendsScreen);
  }
}
