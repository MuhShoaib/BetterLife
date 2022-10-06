import '../../core/widgets/appbar_with_back.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../social_profile_love_screen/widgets/social_profile_love_item_widget.dart';
import 'controller/social_profile_love_controller.dart';
import 'models/social_profile_love_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileLoveScreen extends GetWidget<SocialProfileLoveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // backgroundColor: ColorConstant.gray900,
            body: Column(children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(),
                      // decoration: BoxDecoration(color: ColorConstant.gray900),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SingleChildScrollView(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [
                                              AppBarWithBack(),
                                              SizedBox(
                                                height: getVerticalSize(20),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          30.00),
                                                      right: getHorizontalSize(
                                                          29.00)),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                      children: [
                                                        Column(
                                                            mainAxisSize: MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          120.00),
                                                                      right:
                                                                      getHorizontalSize(
                                                                          120.00)),
                                                                  child: ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          getSize(
                                                                              37.50)),
                                                                      child: Image
                                                                          .asset(
                                                                          ImageConstant
                                                                              .imgEllipse61,
                                                                          height:
                                                                          getSize(
                                                                              75.00),
                                                                          width:
                                                                          getSize(
                                                                              75.00),
                                                                          fit: BoxFit
                                                                              .fill))),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          120.00),
                                                                      top: getVerticalSize(
                                                                          5.00),
                                                                      right:
                                                                      getHorizontalSize(
                                                                          120.00)),
                                                                  child: Text(
                                                                    "lbl_paitynherwitz2"
                                                                        .tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    // style: AppStyle
                                                                    //     .textStyleIntermedium10
                                                                    //     .copyWith(
                                                                    //         fontSize:
                                                                    //             getFontSize(
                                                                    //                 10))
                                                                  )),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: getHorizontalSize(
                                                                          120.00),
                                                                      top: getVerticalSize(
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
                                                                            padding: EdgeInsets
                                                                                .only(
                                                                                bottom:
                                                                                getVerticalSize(
                                                                                    1.00)),
                                                                            child: Container(
                                                                                height:
                                                                                getVerticalSize(
                                                                                    14.00),
                                                                                width:
                                                                                getHorizontalSize(
                                                                                    11.00),
                                                                                child: SvgPicture
                                                                                    .asset(
                                                                                    ImageConstant
                                                                                        .imgUnion1,
                                                                                    fit: BoxFit
                                                                                        .fill))),
                                                                        Padding(
                                                                            padding: EdgeInsets
                                                                                .only(
                                                                                left:
                                                                                getHorizontalSize(
                                                                                    5.00)),
                                                                            child: Text(
                                                                              "lbl_dallas"
                                                                                  .tr
                                                                                  .toUpperCase(),
                                                                              overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign:
                                                                              TextAlign
                                                                                  .left,
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
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      top: getVerticalSize(
                                                                          30.00),
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
                                                                            onTap: () {
                                                                              onTapFrame1284();
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
                                                                                  Container(
                                                                                      height: getVerticalSize(
                                                                                          24.00),
                                                                                      width: getHorizontalSize(
                                                                                          26.00),
                                                                                      child: SvgPicture
                                                                                          .asset(
                                                                                          ImageConstant
                                                                                              .imgGroup12,
                                                                                          fit:
                                                                                          BoxFit
                                                                                              .fill)),
                                                                                  Align(
                                                                                      alignment:
                                                                                      Alignment
                                                                                          .center,
                                                                                      child: Padding(
                                                                                          padding: EdgeInsets
                                                                                              .only(
                                                                                              left: getHorizontalSize(
                                                                                                  2.00),
                                                                                              top: getVerticalSize(
                                                                                                  5.00),
                                                                                              right: getHorizontalSize(
                                                                                                  2.00)),
                                                                                          child: Text(
                                                                                            "lbl_post"
                                                                                                .tr,
                                                                                            overflow: TextOverflow
                                                                                                .ellipsis,
                                                                                            textAlign: TextAlign
                                                                                                .center,
                                                                                            // style: AppStyle.textStyleIntersemibold10.copyWith(fontSize: getFontSize(10))
                                                                                          )))
                                                                                ])),
                                                                        GestureDetector(
                                                                            onTap: () {
                                                                              onTapFrame1285();
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
                                                                                  Container(
                                                                                      height: getVerticalSize(
                                                                                          24.00),
                                                                                      width: getHorizontalSize(
                                                                                          37.27),
                                                                                      child: SvgPicture
                                                                                          .asset(
                                                                                          ImageConstant
                                                                                              .imgGroup10,
                                                                                          fit:
                                                                                          BoxFit
                                                                                              .fill)),
                                                                                  Align(
                                                                                      alignment:
                                                                                      Alignment
                                                                                          .center,
                                                                                      child: Padding(
                                                                                          padding: EdgeInsets
                                                                                              .only(
                                                                                              left: getHorizontalSize(
                                                                                                  0.13),
                                                                                              top: getVerticalSize(
                                                                                                  5.00),
                                                                                              right: getHorizontalSize(
                                                                                                  0.14)),
                                                                                          child: Text(
                                                                                              "lbl_friends"
                                                                                                  .tr,
                                                                                              overflow: TextOverflow
                                                                                                  .ellipsis,
                                                                                              textAlign: TextAlign
                                                                                                  .center,
                                                                                              // style: AppStyle
                                                                                              //     .textStyleIntersemibold10
                                                                                              //     .copyWith(
                                                                                              //     fontSize: getFontSize(
                                                                                              //         10))
                                                                                          )))
                                                                                ])),
                                                                        GestureDetector(
                                                                            onTap: () {
                                                                              onTapFrame1286();
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
                                                                                  Align(
                                                                                      alignment:
                                                                                      Alignment
                                                                                          .center,
                                                                                      child: Padding(
                                                                                          padding:
                                                                                          EdgeInsets
                                                                                              .only(
                                                                                              left: getHorizontalSize(
                                                                                                  3.35),
                                                                                              right: getHorizontalSize(
                                                                                                  3.36)),
                                                                                          child: Container(
                                                                                              height: getVerticalSize(
                                                                                                  24.00),
                                                                                              width: getHorizontalSize(
                                                                                                  29.29),
                                                                                              child: SvgPicture
                                                                                                  .asset(
                                                                                                  ImageConstant
                                                                                                      .imgGroup11,
                                                                                                  fit: BoxFit
                                                                                                      .fill)))),
                                                                                  Padding(
                                                                                      padding: EdgeInsets
                                                                                          .only(
                                                                                          top: getVerticalSize(
                                                                                              5.00)),
                                                                                      child: Text(
                                                                                          "lbl_groups"
                                                                                              .tr,
                                                                                          overflow:
                                                                                          TextOverflow
                                                                                              .ellipsis,
                                                                                          textAlign: TextAlign
                                                                                              .center,
                                                                                          // style: AppStyle
                                                                                          //     .textStyleIntersemibold10
                                                                                          //     .copyWith(
                                                                                          //     fontSize: getFontSize(
                                                                                          //         10))
                                                                                      ))
                                                                                ])),
                                                                        Column(
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
                                                                              Container(
                                                                                  height:
                                                                                  getVerticalSize(
                                                                                      24.00),
                                                                                  width: getHorizontalSize(
                                                                                      27.43),
                                                                                  child: SvgPicture
                                                                                      .asset(
                                                                                      ImageConstant
                                                                                          .imgVector10,
                                                                                      fit: BoxFit
                                                                                          .fill)),
                                                                              Align(
                                                                                  alignment:
                                                                                  Alignment
                                                                                      .center,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets
                                                                                          .only(
                                                                                          left: getHorizontalSize(
                                                                                              3.71),
                                                                                          top: getVerticalSize(
                                                                                              5.00),
                                                                                          right: getHorizontalSize(
                                                                                              3.72)),
                                                                                      child: Text(
                                                                                          "lbl_like2"
                                                                                              .tr,
                                                                                          overflow:
                                                                                          TextOverflow
                                                                                              .ellipsis,
                                                                                          textAlign: TextAlign
                                                                                              .center,
                                                                                          // style: AppStyle
                                                                                          //     .textStyleIntersemibold101
                                                                                          //     .copyWith(
                                                                                          //     fontSize: getFontSize(
                                                                                          //         10))
                                                                                      )))
                                                                            ])
                                                                      ])),
                                                              Container(
                                                                  height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                                  width: getHorizontalSize(
                                                                      315.00),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                      top: getVerticalSize(
                                                                          10.00),
                                                                      right:
                                                                      getHorizontalSize(
                                                                          1.00)),
                                                                  decoration: BoxDecoration(
                                                                      // color: ColorConstant
                                                                      //     .whiteA700
                                                                  ))
                                                            ]),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                top: getVerticalSize(
                                                                    9.00)),
                                                            child: Obx(() =>
                                                                GridView
                                                                    .builder(
                                                                    shrinkWrap: true,
                                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                        mainAxisExtent:
                                                                        getVerticalSize(
                                                                            101.00),
                                                                        crossAxisCount: 3,
                                                                        mainAxisSpacing:
                                                                        getHorizontalSize(
                                                                            8.00),
                                                                        crossAxisSpacing:
                                                                        getHorizontalSize(
                                                                            8.00)),
                                                                    physics:
                                                                    NeverScrollableScrollPhysics(),
                                                                    itemCount: controller
                                                                        .socialProfileLoveModelObj
                                                                        .value
                                                                        .socialProfileLoveItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (
                                                                        context,
                                                                        index) {
                                                                      SocialProfileLoveItemModel
                                                                      model = controller
                                                                          .socialProfileLoveModelObj
                                                                          .value
                                                                          .socialProfileLoveItemList[index];
                                                                      return SocialProfileLoveItemWidget(
                                                                          model);
                                                                    })))
                                                      ]))
                                            ]))))
                          ]))),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        height: getVerticalSize(92.00),
                        width: getHorizontalSize(100.00),
                        child: Stack(
                            alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                  ImageConstant.imgUnsplashl9zhig1,
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  fit: BoxFit.fill)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          getHorizontalSize(5.00)),
                                      gradient: LinearGradient(
                                          begin: Alignment(
                                              8.326672684688674e-17,
                                              5.412337245047638e-16),
                                          end: Alignment(
                                              0.050000003671646365,
                                              0.3050000087320812),
                                          colors: [
                                            // ColorConstant.gray900D1,
                                            // ColorConstant.gray90000
                                          ])),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(5.00),
                                                top: getVerticalSize(4.50),
                                                bottom: getVerticalSize(88.50)),
                                            child: Container(
                                                height: getVerticalSize(7.00),
                                                width: getHorizontalSize(8.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgVector9,
                                                    fit: BoxFit.fill))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(2.00),
                                                top: getVerticalSize(3.00),
                                                right: getHorizontalSize(68.00),
                                                bottom: getVerticalSize(87.00)),
                                            child: Text("lbl_2_6k".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleIntermedium8
                                                //     .copyWith(
                                                //     fontSize: getFontSize(8))
                                            ))
                                      ])))
                        ])),
                    Container(
                        height: getVerticalSize(92.00),
                        width: getHorizontalSize(100.00),
                        child: Stack(
                            alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(
                                  ImageConstant.imgUnsplashl9zhig1,
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  fit: BoxFit.fill)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          getHorizontalSize(5.00)),
                                      gradient: LinearGradient(
                                          begin: Alignment(
                                              8.326672684688674e-17,
                                              5.412337245047638e-16),
                                          end: Alignment(
                                              0.050000003671646365,
                                              0.3050000087320812),
                                          colors: [
                                            // ColorConstant.gray900D1,
                                            // ColorConstant.gray90000
                                          ])),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(5.00),
                                                top: getVerticalSize(4.50),
                                                bottom: getVerticalSize(88.50)),
                                            child: Container(
                                                height: getVerticalSize(7.00),
                                                width: getHorizontalSize(8.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgVector9,
                                                    fit: BoxFit.fill))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(2.00),
                                                top: getVerticalSize(3.00),
                                                right: getHorizontalSize(68.00),
                                                bottom: getVerticalSize(87.00)),
                                            child: Text("lbl_2_6k".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleIntermedium8
                                                //     .copyWith(
                                                //     fontSize: getFontSize(8))
                                            ))
                                      ])))
                        ])),
                    Container(
                        height: getSize(100.00),
                        width: getSize(100.00),
                        child: Stack(
                            alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                  ImageConstant.imgUnsplashl9zhig1,
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  fit: BoxFit.fill)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          getHorizontalSize(5.00)),
                                      gradient: LinearGradient(
                                          begin: Alignment(
                                              8.326672684688674e-17,
                                              5.412337245047638e-16),
                                          end: Alignment(
                                              0.050000003671646365,
                                              0.3050000087320812),
                                          colors: [
                                            // ColorConstant.gray900D1,
                                            // ColorConstant.gray90000
                                          ])),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(5.00),
                                                top: getVerticalSize(4.50),
                                                bottom: getVerticalSize(88.50)),
                                            child: Container(
                                                height: getVerticalSize(7.00),
                                                width: getHorizontalSize(8.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgVector9,
                                                    fit: BoxFit.fill))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(2.00),
                                                top: getVerticalSize(3.00),
                                                right: getHorizontalSize(68.00),
                                                bottom: getVerticalSize(87.00)),
                                            child: Text("lbl_2_6k".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                // style: AppStyle
                                                //     .textStyleIntermedium8
                                                //     .copyWith(
                                                //     fontSize: getFontSize(8))
                                            ))
                                      ])))
                        ]))
                  ])
            ])));
  }

  onTapFrame1284() {
    // Get.toNamed(AppRoutes.socialProfileScreen);
  }

  onTapFrame1285() {
    // Get.toNamed(AppRoutes.socialProfileFriendsScreen);
  }

  onTapFrame1286() {
    // Get.toNamed(AppRoutes.socialGroupScreen);
  }
}
