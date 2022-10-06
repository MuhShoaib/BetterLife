import 'dart:ui';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../social_profile_friends_screen/widgets/social_profile_friends_item_widget.dart';
import 'controller/social_profile_friends_controller.dart';
import 'models/social_profile_friends_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileFriendsScreen
    extends GetWidget<SocialProfileFriendsController> {
  SocialProfileFriendsController spfc =
      Get.put(SocialProfileFriendsController());

  // bool followers =false;

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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "FRIENDS",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(25.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(25.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                             Obx(() =>  GestureDetector(
                                                onTap: () {
                                                  spfc.msg.value = false;
                                                  spfc.userList.value.clear();
                                                  spfc.getFollowing();
                                                  spfc.following.value = true;
                                                },
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      11.97),
                                                              right:
                                                                  getHorizontalSize(
                                                                      11.97)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      20.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      31.05),
                                                              child: SvgPicture.asset(
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
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    color: spfc
                                                                            .following
                                                                            .value
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                // style: AppStyle
                                                                //     .textStyleIntermedium12
                                                                //     .copyWith(
                                                                //         fontSize:
                                                                //             getFontSize(
                                                                //                 12))
                                                              )))
                                                    ]),
                                              )),
                                             Obx(() =>  GestureDetector(
                                                  onTap: () {
                                                    // onTapGroup1005();
                                                    spfc.msg.value = false;
                                                    // spfc.msg.value = true;
                                                    spfc.userList.value.clear();
                                                    spfc.getFollowers();
                                                    spfc.following.value =
                                                        false;
                                                  },
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        11.97),
                                                                right:
                                                                    getHorizontalSize(
                                                                        11.97)),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        20.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        31.05),
                                                                child: SvgPicture.asset(
                                                                    ImageConstant
                                                                        .imgVector13,
                                                                    fit: BoxFit
                                                                        .fill))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: getVerticalSize(
                                                                        5.00)),
                                                                child: Text(
                                                                  "lbl_followers"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: spfc.following.value ==
                                                                              false
                                                                          ? Colors
                                                                              .white
                                                                          : Colors
                                                                              .grey,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  // style: AppStyle
                                                                  //     .textStyleIntermedium12
                                                                  //     .copyWith(
                                                                  //         fontSize:
                                                                  //             getFontSize(
                                                                  //                 12))
                                                                )))
                                                      ])))
                                            ]),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(20.00)),
                                            child: FutureBuilder(
                                                future: spfc.getFollowing(),
                                                builder: (context, snapshot) {
                                                  return Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: spfc.userList
                                                              .value.length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            print(spfc.userList
                                                                .value[index].name);
                                                            return SocialProfileFriendsItemWidget(
                                                              index: index,
                                                              itemData: spfc.userList
                                                                  .value[index],
                                                            );
                                                          }));
                                                }))
                                      ]))
                            ]))))));
  }

  onTapBtnFollowing() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }

  onTapGroup1005() {
    // Get.toNamed(AppRoutes.socialProfileFollowersScreen);
  }
}
