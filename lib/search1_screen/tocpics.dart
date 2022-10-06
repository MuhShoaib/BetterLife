import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/utils/image_constant.dart';
import '../search1_screen/widgets/search_item_widget.dart';
import 'controller/search1_controller.dart';
import 'models/search_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTopicScreen extends GetWidget<Search1Controller> {
  const SearchTopicScreen({Key? key}) : super(key: key);

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
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Container(
                              //         height: getVerticalSize(57.00),
                              //         width: size.width,
                              //         margin: EdgeInsets.only(top: getVerticalSize(5.00)),
                              //         child: Row(children: [
                              //           GestureDetector(
                              //               onTap: () {
                              //                 onTapImgFrame262();
                              //               },
                              //               child: Padding(
                              //                   padding: EdgeInsets.only(
                              //                       left: getHorizontalSize(30.00),
                              //                       top: getVerticalSize(16.00),
                              //                       right: getHorizontalSize(30.00),
                              //                       bottom: getVerticalSize(24)),
                              //                   child: Container(
                              //                       height: getVerticalSize(30.00),
                              //                       width: getHorizontalSize(24.00),
                              //                       child: SvgPicture.asset(
                              //                           ImageConstant.imgFrame2621,
                              //                           fit: BoxFit.fill)))),
                              //           Expanded(
                              //             child: Container(
                              //                 height: getVerticalSize(42),
                              //                 width: getHorizontalSize(200),
                              //                 decoration: BoxDecoration(
                              //
                              //                   borderRadius: BorderRadius.all(
                              //                     Radius.circular(
                              //                       10.00,
                              //                     ),
                              //                   ),
                              //                 ),
                              //                 child: Center(
                              //                   child: TextFormField(
                              //                       controller:
                              //                       controller.group56Controller,
                              //                       decoration: InputDecoration(
                              //                           hintText: "lbl_search".tr,
                              //                           hintStyle: TextStyle(color: Colors.white),
                              //
                              //                           // hintStyle: AppStyle
                              //                           //     .textStyleInterregular10
                              //                           //     .copyWith(
                              //                           //         fontSize: getFontSize(14),
                              //                           //         color: ColorConstant
                              //                           //             .tealA400),
                              //                           // enabledBorder: OutlineInputBorder(
                              //                           //     borderSide: BorderSide(
                              //                           //         //olor: Colors.white,
                              //                           //
                              //                           //         width: 1)),
                              //                           focusedBorder: UnderlineInputBorder(
                              //                               borderSide: BorderSide(
                              //                                 // color: ColorConstant
                              //                                 //     .whiteA70019,
                              //                                   width: 1)),
                              //                           prefixIcon: Padding(
                              //                               padding: EdgeInsets.only(
                              //                                   left: getHorizontalSize(
                              //                                       5.00),
                              //                                   right: getHorizontalSize(
                              //                                       10.00)),
                              //                               child: Container(
                              //                                   height: getSize(22),
                              //                                   width: getSize(22),
                              //                                   child: SvgPicture.asset(
                              //                                     "assets/images/search.svg",
                              //                                     // ImageConstant
                              //                                     //     .imgVector4,
                              //                                     fit: BoxFit.contain,
                              //                                     // color: ColorConstant
                              //                                     //     .tealA400,
                              //                                   ))),
                              //                           prefixIconConstraints: BoxConstraints(
                              //                               minWidth: getSize(22),
                              //                               minHeight: getSize(22)),
                              //                           isDense: true,
                              //                           contentPadding: EdgeInsets.only(
                              //                               top: getVerticalSize(0.86),
                              //                               bottom:
                              //                               getVerticalSize(6.86))),
                              //                       style: TextStyle(
                              //                         // color: ColorConstant.whiteA700,
                              //                           fontSize: getFontSize(14),
                              //                           fontFamily: 'Inter',
                              //                           fontWeight: FontWeight.w400)),
                              //                 )),
                              //           ),
                              //           Padding(
                              //             padding:
                              //                 const EdgeInsets.symmetric(horizontal: 24),
                              //             child: Text(
                              //               "SEARCH",
                              //               style: TextStyle(
                              //                 color:Colors.white,
                              //                   // color: ColorConstant.tealA400,
                              //                   fontSize: getFontSize(14),
                              //                   fontFamily: 'Inter',
                              //                   fontWeight: FontWeight.w600),
                              //             ),
                              //           )
                              //         ]))),
                              // Padding(
                              //     padding: EdgeInsets.only(
                              //         left: getHorizontalSize(25.00),
                              //         right: getHorizontalSize(25.00),
                              //         bottom: getVerticalSize(20.00)),
                              //     child: Column(
                              //         mainAxisSize: MainAxisSize.min,
                              //         crossAxisAlignment: CrossAxisAlignment.start,
                              //         mainAxisAlignment: MainAxisAlignment.start,
                              //         children: [
                              //           Align(
                              //               alignment: Alignment.center,
                              //               child: Container(
                              //                   height: getVerticalSize(40.00),
                              //                   width: getHorizontalSize(315.00),
                              //                   margin: EdgeInsets.only(
                              //                       left: getHorizontalSize(5.00),
                              //                       right: getHorizontalSize(5.00)),
                              //                   child: Stack(
                              //                       alignment: Alignment.centerRight,
                              //                       children: [
                              //                         Align(
                              //                             alignment: Alignment.centerLeft,
                              //                             child: Padding(
                              //                                 padding: EdgeInsets.only(
                              //                                     right: getHorizontalSize(
                              //                                         10.00)),
                              //                                 child: Container(
                              //                                     alignment:
                              //                                         Alignment.center,
                              //                                     height: getVerticalSize(
                              //                                         40.00),
                              //                                     width:
                              //                                         getHorizontalSize(
                              //                                             158.00),
                              //                                     decoration:
                              //                                         BoxDecoration(
                              //                                       border: Border.all(
                              //                                         color: kPrimaryColor,
                              //                                         // color: ColorConstant
                              //                                         //     .whiteA700,
                              //                                         width:
                              //                                             getHorizontalSize(
                              //                                           1.00,
                              //                                         ),
                              //                                       ),
                              //                                     ),
                              //                                     child: Text(
                              //                                         "lbl_users".tr,
                              //                                         textAlign:
                              //                                             TextAlign.left,
                              //                                         style: TextStyle(color: Colors.white),
                              //                                         // style: AppStyle
                              //                                         //     .textStyleIntersemibold124
                              //                                         //     .copyWith(
                              //                                         //         fontSize:
                              //                                         //             getFontSize(
                              //                                         //                 12))
                              //                                     )))),
                              //                         Align(
                              //                             alignment:
                              //                                 Alignment.centerRight,
                              //                             child: Padding(
                              //                                 padding: EdgeInsets.only(
                              //                                     left: getHorizontalSize(
                              //                                         10.00)),
                              //                                 child: Container(
                              //                                     alignment:
                              //                                         Alignment.center,
                              //                                     height: getVerticalSize(
                              //                                         40.00),
                              //                                     width:
                              //                                         getHorizontalSize(
                              //                                             158.00),
                              //                                     decoration:
                              //                                         BoxDecoration(
                              //                                           color: kPrimaryColor
                              //                                       // border: Border.all(
                              //                                       //
                              //                                       //   // color: ColorConstant
                              //                                       //   //     .whiteA700,
                              //                                       //   width:
                              //                                       //       getHorizontalSize(
                              //                                       //     1.00,
                              //                                       //   ),
                              //                                       // ),
                              //                                     ),
                              //                                     child: Text(
                              //                                         "lbl_topics".tr,
                              //                                         textAlign:
                              //                                             TextAlign.left,
                              //                                       style: TextStyle(color: Colors.white),
                              //                                         // style: AppStyle
                              //                                         //     .textStyleIntersemibold123
                              //                                         //     .copyWith(
                              //                                         //         fontSize:
                              //                                         //             getFontSize(
                              //                                         //                 12))
                              //                                     ))))
                              //                       ]))),
                              //         ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(20.00)),
                                  child: Container(
                                    height: size.height-210,
                                    // color: Colors.pink,
                                    // padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        Container(
                                          height: 75,
                                          // color: ColorConstant.tealA400,
                                          child: Center(
                                            child: Text(
                                              "MOTIVATION",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              "BUSINESS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  // color: ColorConstant.tealA400,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          // color: ColorConstant.tealA400,
                                          child: Center(
                                            child: Text(
                                              "HEALTH & WELLNESS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              "FITNESS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  // color: ColorConstant.tealA400,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          // color: ColorConstant.tealA400,
                                          child: Center(
                                            child: Text(
                                              "SPORTS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              "RELAXATION",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  // color: ColorConstant.tealA400,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          // color: ColorConstant.tealA400,
                                          child: Center(
                                            child: Text(
                                              "SPORTS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              "RELAXATION",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  // color: ColorConstant.tealA400,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          // color: ColorConstant.tealA400,
                                          child: Center(
                                            child: Text(
                                              "SPORTS",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 75,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                              "RELAXATION",
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  // color: ColorConstant.tealA400,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 4.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                            ]))))));
  }

  onTapBtnFollowing() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }

  onTapImgFrame262() {
    // Get.toNamed(AppRoutes.socialScreen);
  }
}
