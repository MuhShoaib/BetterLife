import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

// import 'package:better_life/presentation/social_screen/add.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:video_player/video_player.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import 'add.dart';
import 'controller/social_controller.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialScreen extends StatefulWidget {
  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: ColorConstant.tealA400,
      //   child: SvgPicture.asset(ImageConstant.imgGroup34),
      // ),
      bottomNavigationBar: StylishBottomBar(
        iconStyle: IconStyle.simple,
        // backgroundColor: ColorConstant.gray900,
        items: [
          AnimatedBarItems(
              icon: GestureDetector(
                  onTap: () {
                    onTapImgGroup651();
                  },
                  child: Image.asset(
                    'assets/icons/navBarIcon/NavBarHome.png',
                    height: 32,
                    width: 32,
                  )),
              selectedColor: Colors.white,
              backgroundColor: Colors.amber,
              title: Text('Home')),
          AnimatedBarItems(
              icon: GestureDetector(
                onTap: () {
                  onTapImgGroup651();
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              selectedColor: Colors.white,
              unSelectedColor: Colors.white,
              title: Text('Add')),
          AnimatedBarItems(
              icon: GestureDetector(
                onTap: () {
                  Get.to(() => AddSocialScreen());
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Icon(
                      Icons.add_circle,
                      size: 45,
                      color: Color(0xff1ED1A8),
                    )),
              ),
              selectedColor: Colors.white,
              unSelectedColor: Colors.white,
              title: Text('Add')),
          AnimatedBarItems(
              icon: GestureDetector(
                  onTap: () {
                    onTapImgGroup989();
                  },
                  child: Image.asset(
                    'assets/icons/navBarIcon/NavBarMsg.png',
                    height: 32,
                    width: 32,
                  )),
              backgroundColor: Colors.amber,
              selectedColor: Colors.pinkAccent,
              title: Text('Profile')),
          AnimatedBarItems(
              icon: GestureDetector(
                  onTap: () {
                    onTapImgGroup650();
                  },
                  child: Image.asset(
                    'assets/icons/navBarIcon/NavBarProfile.png',
                    height: 32,
                    width: 32,
                  )),
              backgroundColor: Colors.amber,
              selectedColor: Colors.pinkAccent,
              title: Text('Profile')),
        ],
        iconSize: 25,
        barAnimation: BarAnimation.fade,
        hasNotch: false,
        fabLocation: StylishBarFabLocation.center,
        opacity: 0.3,
        currentIndex: 0,
        onTap: (index) {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container()),
          Positioned(
              right: 23,
              left: 23,
              bottom: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                      // borderRadius: BorderRadius.circular(getSize(20.00)),
                      child: Image.asset('assets/icons/profileStoryAdd.png',
                          height: getSize(40.00),
                          width: getSize(40.00),
                          fit: BoxFit.fill)),
                  SizedBox(height: getVerticalSize(30)),
                  Container(
                      height: getVerticalSize(30.00),
                      width: getHorizontalSize(34.00),
                      child: Image.asset('assets/icons/like.png')),
                  SizedBox(height: getVerticalSize(5)),
                  Text(
                    'Like   ',
                    style:
                        TextStyle(color: Colors.white, fontSize: getSize(10)),
                  ),
                  SizedBox(height: getVerticalSize(30)),
                  Container(
                      height: getVerticalSize(30.00),
                      width: getHorizontalSize(34.00),
                      child: Image.asset('assets/icons/comment.png')),
                  SizedBox(height: getVerticalSize(5)),
                  Text(
                    'Comment',
                    style:
                        TextStyle(color: Colors.white, fontSize: getSize(10)),
                  ),
                  SizedBox(height: getVerticalSize(30)),
                  Container(
                      height: getVerticalSize(30.00),
                      width: getHorizontalSize(34.00),
                      child: Image.asset('assets/icons/Share.png')),
                  SizedBox(height: getVerticalSize(5)),
                  Text(
                    'Share   ',
                    style:
                        TextStyle(color: Colors.white, fontSize: getSize(10)),
                  ),
                  SizedBox(height: getVerticalSize(5)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: getVerticalSize(10.00)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(10.00)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: getVerticalSize(5.00),
                                                bottom: getVerticalSize(5.00),
                                                right: 15),
                                            child: Text(
                                              "lbl_nadiaakter".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              // style: AppStyle.textStyleIntersemibold121.copyWith(
                                              //   fontSize: getFontSize(12),
                                              // ),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xff1ED1A8),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30))),
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            label: Text("Follow",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: getSize(12),
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          // Container(
                                          //     margin: EdgeInsets.only(
                                          //         left: getHorizontalSize(15.00)),
                                          //     decoration: BoxDecoration(
                                          //         color: ColorConstant.tealA400,
                                          //         borderRadius: BorderRadius.circular(
                                          //             getHorizontalSize(36.00))),
                                          //     child: Row(
                                          //         crossAxisAlignment:
                                          //             CrossAxisAlignment.center,
                                          //         mainAxisSize: MainAxisSize.min,
                                          //         children: [
                                          //           Padding(
                                          //               padding: EdgeInsets.only(
                                          //                   left:
                                          //                       getHorizontalSize(15.00),
                                          //                   top: getVerticalSize(8.00),
                                          //                   bottom:
                                          //                       getVerticalSize(7.00)),
                                          //               child: Container(
                                          //                   height: getSize(10.00),
                                          //                   width: getSize(10.00),
                                          //                   child: SvgPicture.asset(
                                          //                       ImageConstant
                                          //                           .imgFrame1270,
                                          //                       fit: BoxFit.fill))),
                                          //           Padding(
                                          //               padding: EdgeInsets.only(
                                          //                   left: getHorizontalSize(5.00),
                                          //                   top: getVerticalSize(7.00),
                                          //                   right:
                                          //                       getHorizontalSize(14.00),
                                          //                   bottom:
                                          //                       getVerticalSize(6.00)),
                                          //               child: Text("lbl_follow".tr,
                                          //                   overflow:
                                          //                       TextOverflow.ellipsis,
                                          //                   textAlign: TextAlign.left,
                                          //                   style: AppStyle
                                          //                       .textStyleIntermedium10
                                          //                       .copyWith(
                                          //                           fontSize:
                                          //                               getFontSize(10))))
                                          //         ]))
                                        ])),
                                Container(
                                    width: getHorizontalSize(335.00),
                                    margin: EdgeInsets.only(
                                        top: getVerticalSize(5.00)),
                                    child: Text("msg_lorem_ipsum_dol".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        // style: AppStyle.textStyleInterregular10
                                        //     .copyWith(
                                        //         fontSize: getFontSize(10))
                                    ))
                              ])))
                ],
              )),
          Positioned(
            top: -16,
            left: 0,
            right: 0,
            child: Container(
                width: double.infinity,
                height: getVerticalSize(120),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      // ColorConstant.black900A6,
                      // ColorConstant.black90000
                    ])),
                child: Padding(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(30.00),
                        right: getHorizontalSize(30)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(24.00),
                              child: GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: SvgPicture.asset(
                                      ImageConstant.imgFrame2621,
                                      fit: BoxFit.fill))),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("lbl_social".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    // style: AppStyle.textStyleIntersemibold142
                                    //     .copyWith(
                                    //         fontSize: getFontSize(14),
                                    //         letterSpacing: 0.70,
                                    //         color: Color(0xff1ED1A8)
                                    // )
                                ),
                                Container(
                                    height: getVerticalSize(16.00),
                                    width: getHorizontalSize(2.00),
                                    margin: EdgeInsets.only(
                                        left: getHorizontalSize(10.00),
                                        top: getVerticalSize(0.50),
                                        bottom: getVerticalSize(0.50)),
                                    // decoration: BoxDecoration(
                                    //     color: ColorConstant.whiteA700)
                                ),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtNearyou();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getHorizontalSize(8.00),
                                            top: getVerticalSize(1.00),
                                            bottom: getVerticalSize(1.00)),
                                        child: Text("lbl_near_you".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            // style: AppStyle
                                            //     .textStyleIntersemibold121
                                            //     .copyWith(
                                            //         fontSize: getFontSize(12),
                                            //         letterSpacing: 0.60))
                                    )),
                                )
                              ]),
                          SizedBox()
                        ]))),
          )
        ],
      ),
    ));
  }

  onTapTxtNearyou() {
    // Get.toNamed(AppRoutes.nearYouScreen);
  }

  onTapImgVector() {
    // Get.toNamed(AppRoutes.frame1095Screen);
  }

  onTapImgGroup651() {
    // Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgGroup989() {
    // Get.toNamed(AppRoutes.socialProfileMessageScreen);
  }

  onTapImgGroup650() {
   // Get.toNamed(AppRoutes.socialProfileScreen);
  }
}
