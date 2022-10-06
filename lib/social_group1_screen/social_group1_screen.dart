import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../social_group1_screen/widgets/social_group1_item_widget.dart';
import 'controller/social_group1_controller.dart';
import 'models/social_group1_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialGroup1Screen extends GetWidget<SocialGroup1Controller> {
  final controller = Get.put(SocialGroup1Controller());
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: getVerticalSize(57.00),
                                  width: size.width,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(5.00)),
                                  child: Stack(alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(57.00),
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
                                                              child: SvgPicture
                                                                  .asset(
                                                                  "assets/images/better.svg",
                                                                  fit: BoxFit
                                                                      .fill))))
                                                ]))),
                                        // Align(
                                        //     alignment: Alignment.bottomRight,
                                        //     child: Container(
                                        //         width: getHorizontalSize(
                                        //             268.00),
                                        //         margin: EdgeInsets.only(
                                        //             left: getHorizontalSize(
                                        //                 30.00),
                                        //             top: getVerticalSize(17.00),
                                        //             right: getHorizontalSize(
                                        //                 30.00),
                                        //             bottom: getVerticalSize(
                                        //                 17.00)),
                                        //         child: Column(
                                        //             mainAxisSize: MainAxisSize
                                        //                 .min,
                                        //             crossAxisAlignment: CrossAxisAlignment
                                        //                 .start,
                                        //             mainAxisAlignment: MainAxisAlignment
                                        //                 .start,
                                        //             children: [
                                        //               Padding(
                                        //                   padding: EdgeInsets
                                        //                       .only(
                                        //                       left: getHorizontalSize(
                                        //                           5.00),
                                        //                       right: getHorizontalSize(
                                        //                           10.00)),
                                        //                   child: Row(
                                        //                       mainAxisAlignment: MainAxisAlignment
                                        //                           .start,
                                        //                       crossAxisAlignment: CrossAxisAlignment
                                        //                           .center,
                                        //                       mainAxisSize: MainAxisSize
                                        //                           .min,
                                        //                       children: [
                                        //                         Container(
                                        //                             height: getSize(
                                        //                                 14.00),
                                        //                             width: getSize(
                                        //                                 14.00),
                                        //                             child: SvgPicture
                                        //                                 .asset(
                                        //                                 ImageConstant
                                        //                                     .imgVector4,
                                        //                                 fit: BoxFit
                                        //                                     .fill)),
                                        //                         Padding(
                                        //                             padding: EdgeInsets
                                        //                                 .only(
                                        //                                 left: getHorizontalSize(
                                        //                                     10.00),
                                        //                                 top: getVerticalSize(
                                        //                                     1.00),
                                        //                                 bottom: getVerticalSize(
                                        //                                     1.00)),
                                        //                             child: Text(
                                        //                               "msg_search_your_fri"
                                        //                                   .tr,
                                        //                               overflow: TextOverflow
                                        //                                   .ellipsis,
                                        //                               textAlign: TextAlign
                                        //                                   .left,
                                        //                               // style: AppStyle.textStyleInterregular101.copyWith(fontSize: getFontSize(10))
                                        //                             ))
                                        //                       ])),
                                        //               Container(
                                        //                 height: getVerticalSize(
                                        //                     1.00),
                                        //                 width: getHorizontalSize(
                                        //                     268.00),
                                        //                 margin: EdgeInsets.only(
                                        //                     top: getVerticalSize(
                                        //                         6.00)),
                                        //                 // decoration: BoxDecoration(color: ColorConstant.whiteA700)
                                        //               )
                                        //             ])))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(20.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(30.00),
                                                right: getHorizontalSize(
                                                    30.00)),
                                            child: Text("msg_enter_your_grou"
                                                .tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              // style: AppStyle.textStyleInterregular124.copyWith(fontSize: getFontSize(12))
                                            )),
                                        Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(325.00),
                                          margin:
                                          EdgeInsets.only(
                                              left: getHorizontalSize(25.00),
                                              top: getVerticalSize(5.00),
                                              right: getHorizontalSize(25.00)),
                                          // decoration: BoxDecoration(color: ColorConstant.whiteA700)
                                        ),
                                        Container(
                                            height: getVerticalSize(692.00),
                                            width: size.width,
                                            child: Stack(alignment: Alignment
                                                .bottomLeft, children: [
                                              Align(
                                                  alignment: Alignment
                                                      .topCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              25.00),
                                                          right: getHorizontalSize(
                                                              25.00),
                                                          bottom: getVerticalSize(
                                                              10.00)),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics: BouncingScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .socialGroup1ModelObj
                                                                  .value
                                                                  .socialGroup1ItemList
                                                                  .length,
                                                              itemBuilder: (
                                                                  context,
                                                                  index) {
                                                                SocialGroup1ItemModel model = controller
                                                                    .socialGroup1ModelObj
                                                                    .value
                                                                    .socialGroup1ItemList[index];
                                                                return SocialGroup1ItemWidget(
                                                                    model);
                                                              })))),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomLeft,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              10.00)),
                                                      decoration: BoxDecoration(
                                                          gradient: LinearGradient(
                                                              begin: Alignment(
                                                                  0.5,
                                                                  -3.0616171314629196e-17),
                                                              end: Alignment(
                                                                  0.5,
                                                                  0.9999999999999999),
                                                              colors: [
                                                                // ColorConstant
                                                                //     .gray90000,
                                                                // ColorConstant
                                                                //     .gray900,
                                                              ]
                                                          )),
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
                                                                        30.00),
                                                                    top: getVerticalSize(
                                                                        29.00),
                                                                    right: getHorizontalSize(
                                                                        30.00),
                                                                    bottom: getVerticalSize(
                                                                        30.00)),
                                                                child: GestureDetector(
                                                                    onTap: () {
                                                                      onTapBtnCreategroup();
                                                                    },
                                                                    child: Container(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        height: getVerticalSize(
                                                                            50.00),
                                                                        width: getHorizontalSize(
                                                                            315.00),
                                                                        // decoration: AppDecoration
                                                                        //     .textStyleIntermedium124,
                                                                        child: Text(
                                                                            "lbl_create_group"
                                                                                .tr,
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            // style: AppStyle
                                                                            //     .textStyleIntermedium124
                                                                            //     .copyWith(
                                                                            //     fontSize: getFontSize(
                                                                            //         12))
                                                                        ))))
                                                          ])))
                                            ]))
                                      ]))
                            ]))))));
  }

  onTapBtnCreategroup() {
    // Get.toNamed(AppRoutes.socialGroupScreen);
  }
}
