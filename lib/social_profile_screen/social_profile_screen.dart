import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../core/widgets/appbar_with_back.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../groups/Views/groups_list_view.dart';
import '../social_group_screen/social_group_screen.dart';
import '../social_profile_friends_screen/social_profile_friends_screen.dart';
import '../social_profile_screen/widgets/social_profile_item_widget.dart';
import '../views/user/login.dart';
import 'controller/social_profile_controller.dart';
import 'models/social_profile_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileScreen extends GetWidget<SocialProfileController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.gray900,
            body: Column(children: [
      GestureDetector(
        onTap: () async {
          await FirebaseAuth.instance.signOut();
          Get.offAllNamed("/login");
        },
        child: AppBarWithBack(),
      ),
      Expanded(
          child: FutureBuilder(
              future: controller.getCurrentUser(),
              builder: (context, snapshot) {
                return Container(
                    margin: EdgeInsets.only(),
                    // decoration: BoxDecoration(color: ColorConstant.gray900),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: SingleChildScrollView(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                        // AppBarWithBack(),
                                        SizedBox(
                                          height: getVerticalSize(75),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(30.00),
                                                right:
                                                    getHorizontalSize(29.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
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
                                                                        120.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        120.00)),
                                                            child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getSize(
                                                                            37.50)),
                                                                child: Image.network(
                                                                    controller
                                                                        .socialProfileModel!
                                                                        .image,
                                                                    // ImageConstant
                                                                    //     .imgEllipse61,
                                                                    height:
                                                                        getSize(
                                                                            75.00),
                                                                    width: getSize(
                                                                        75.00),
                                                                    fit: BoxFit
                                                                        .fill))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        5.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        20.00)),
                                                            child: Text(
                                                              "${controller.socialProfileModel!.email}"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                              // style: AppStyle
                                                              //     .textStyleIntermedium10
                                                              //     .copyWith(
                                                              //         fontSize:
                                                              //             getFontSize(
                                                              //                 10))
                                                            )),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        120.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        120.00)),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              getVerticalSize(1.00)),
                                                                      child: Container(
                                                                          height: getVerticalSize(14.00),
                                                                          width: getHorizontalSize(11.00),
                                                                          child: SvgPicture.asset("assets/images/Union.svg",
                                                                              // ImageConstant
                                                                              //     .imgUnion1,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              5.00)),
                                                                      child:
                                                                          Text(
                                                                        "${controller.socialProfileModel!.name}"
                                                                            .tr
                                                                            .toUpperCase(),
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                        // style: AppStyle
                                                                        //     .textStyleIntermedium12
                                                                        //     .copyWith(
                                                                        //         fontSize: getFontSize(
                                                                        //             12),
                                                                        //         letterSpacing:
                                                                        //             0.60)
                                                                      ))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        29.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        0.31)),
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
                                                                  GestureDetector(
                                                                    onTap:(){
                                                                      controller.likes.value = false;
                                                                    },
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          GestureDetector(
                                                                            child: Container(
                                                                                height:
                                                                                    getVerticalSize(38),
                                                                                width: getHorizontalSize(38),
                                                                                child: Image.asset('assets/icons/posts.png'
                                                                                    // 'assets/icons/posts.png'

                                                                                    )),
                                                                          ),
                                                                        ]),
                                                                  ),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        // onTapFrame1285();
                                                                        //     post=true;
                                                                        //     groups=false;
                                                                        //     friend=false;
                                                                        //     likes=false;
                                                                        Get.to(SocialProfileFriendsScreen());
                                                                      },
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                height: getVerticalSize(38),
                                                                                width: getHorizontalSize(38),
                                                                                child: Image.asset('assets/icons/friends.png')),
                                                                          ])),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Get.to(GroupsListView());
                                                                        // onTapFrame1286();
                                                                        //     post=false;
                                                                        //     groups=false;
                                                                        //     friend=true;
                                                                        //     likes=false;
                                                                      },
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                height: getVerticalSize(38),
                                                                                width: getHorizontalSize(38),
                                                                                child: Image.asset('assets/icons/Groups.png')),
                                                                          ])),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        // onTapFrame1287();
                                                                            controller.likes.value = true;
                                                                      },
                                                                      child: Column(
                                                                          mainAxisSize: MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                                height: getVerticalSize(38),
                                                                                width: getHorizontalSize(38),
                                                                                child: Image.asset('assets/icons/likes.png')),
                                                                          ]))
                                                                ])),
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  315.00),
                                                          margin: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      1.00)),
                                                          // decoration: BoxDecoration(
                                                          // color: ColorConstant
                                                          //     .whiteA700)
                                                        )
                                                      ]),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              9.00)),
                                                      child: FutureBuilder(
                                                          future: controller
                                                              .getUserPost(),
                                                          builder: (context,
                                                              snapshot) {
                                                            return Obx(() => GridView
                                                                .builder(
                                                                    shrinkWrap:
                                                                        true,
                                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                        mainAxisExtent:
                                                                            getVerticalSize(
                                                                                101.00),
                                                                        crossAxisCount:
                                                                            3,
                                                                        mainAxisSpacing:
                                                                            getHorizontalSize(
                                                                                8.00),
                                                                        crossAxisSpacing:
                                                                            getHorizontalSize(
                                                                                8.00)),
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    itemCount: controller
                                                                        .list
                                                                        .value
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return SocialProfileItemWidget(
                                                                          index);
                                                                    }));
                                                          }))
                                                ]))
                                      ]))))
                        ]));
              })),
    ])));
  }

  onTapFrame1285() {
    // Get.toNamed(AppRoutes.socialProfileFriendsScreen);
  }

  onTapFrame1286() {
    // Get.toNamed(AppRoutes.socialGroupScreen);
  }

  onTapFrame1287() {
    // Get.toNamed(AppRoutes.socialProfileLoveScreen);
  }
}
