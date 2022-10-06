import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../core/utils/routes.dart';
import '../social_profile_message_screen/widgets/social_profile_message_item_widget.dart';
import 'controller/social_profile_message_controller.dart';
import 'models/social_profile_message_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialProfileMessageScreen
    extends GetWidget<SocialProfileMessageController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: ColorConstant.gray900,
        appBar: AppBar(
          // automaticallyImplyLeading: true,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                height:
                getVerticalSize(20.00),
                width:
                size.width,
                child: TextFormField(
                    controller: controller
                        .group118Controller,
                    decoration: InputDecoration(
                        hintText: "lbl_search".tr,
                        hintStyle: TextStyle(color: Colors.white),
                        // hintStyle: AppStyle.textStyleInterregular10.copyWith(
                        //     fontSize:
                        //         getFontSize(
                        //             10.0),
                        //     color: ColorConstant
                        //         .whiteA700),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              // color: ColorConstant
                              //     .whiteA70019,
                                width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              // color: ColorConstant
                              //     .whiteA70019,
                                width: 1)),
                        prefixIcon: Padding(
                            padding: EdgeInsets.only(left: getHorizontalSize(5.00), right: getHorizontalSize(10.00)),
                            child: Container(
                                height: getSize(14.00),
                                width: getSize(14.00),
                                child: SvgPicture.asset("assets/images/search.svg",
                                    // ImageConstant
                                    //     .imgVector4,
                                    fit: BoxFit.contain))),
                        prefixIconConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00)),
                        isDense: true,
                        contentPadding: EdgeInsets.only(top: getVerticalSize(0.86), bottom: getVerticalSize(6.86))),
                    style: TextStyle(
                      // color: ColorConstant
                      //     .whiteA700,
                      color: Colors.white,
                        fontSize: getFontSize(10.0),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400))),
          ),
        ),
        body: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: getVerticalSize(707.00),
                            width: size.width,
                            margin: EdgeInsets.only(
                                top: getVerticalSize(5.00),
                                bottom: getVerticalSize(20.00)),
                            child: Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          right: getHorizontalSize(20.00)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            // Padding(
                                            //     padding: EdgeInsets.only(
                                            //         left:
                                            //             getHorizontalSize(57.00),
                                            //         top: getVerticalSize(20.00),
                                            //         right:
                                            //             getHorizontalSize(10.00)),
                                            //     child: Container(
                                            //         height:
                                            //             getVerticalSize(20.00),
                                            //         width:
                                            //             getHorizontalSize(268.00),
                                            //         child: TextFormField(
                                            //             controller: controller
                                            //                 .group118Controller,
                                            //             decoration: InputDecoration(
                                            //                 hintText: "lbl_search".tr,
                                            //                 hintStyle: TextStyle(color: Colors.white),
                                            //                 // hintStyle: AppStyle.textStyleInterregular10.copyWith(
                                            //                 //     fontSize:
                                            //                 //         getFontSize(
                                            //                 //             10.0),
                                            //                 //     color: ColorConstant
                                            //                 //         .whiteA700),
                                            //                 enabledBorder: UnderlineInputBorder(
                                            //                     borderSide: BorderSide(
                                            //                         // color: ColorConstant
                                            //                         //     .whiteA70019,
                                            //                         width: 1)),
                                            //                 focusedBorder: UnderlineInputBorder(
                                            //                     borderSide: BorderSide(
                                            //                         // color: ColorConstant
                                            //                         //     .whiteA70019,
                                            //                         width: 1)),
                                            //                 prefixIcon: Padding(
                                            //                     padding: EdgeInsets.only(left: getHorizontalSize(5.00), right: getHorizontalSize(10.00)),
                                            //                     child: Container(
                                            //                         height: getSize(14.00),
                                            //                         width: getSize(14.00),
                                            //                         child: SvgPicture.asset("assets/images/search.svg",
                                            //                             // ImageConstant
                                            //                             //     .imgVector4,
                                            //                             fit: BoxFit.contain))),
                                            //                 prefixIconConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00)),
                                            //                 isDense: true,
                                            //                 contentPadding: EdgeInsets.only(top: getVerticalSize(0.86), bottom: getVerticalSize(6.86))),
                                            //             style: TextStyle(
                                            //                 // color: ColorConstant
                                            //                 //     .whiteA700,
                                            //                 fontSize: getFontSize(10.0),
                                            //                 fontFamily: 'Inter',
                                            //                 fontWeight: FontWeight.w400)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            27.00)),
                                                    child: Container(
                                                      height: size.height - 200,
                                                      child: FutureBuilder(
                                                        future:
                                                            controller.getInbox(),
                                                        builder: (BuildContext
                                                                context,
                                                            AsyncSnapshot<dynamic>
                                                                snapshot) {
                                                          return Obx(() =>
                                                              ListView.builder(
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  shrinkWrap: true,
                                                                  itemCount:
                                                                      controller
                                                                          .socialProfileMessageList
                                                                          .value
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SocialProfileMessageItemWidget(
                                                                      index,
                                                                      onTapGroup:
                                                                          onTapGroup,
                                                                    );
                                                                  }));
                                                        },
                                                      ),
                                                    )))
                                          ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      height: getVerticalSize(57.00),
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          bottom: getVerticalSize(10.00)),
                                      decoration: BoxDecoration(),
                                      child: Stack(children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(30.00),
                                                    top: getVerticalSize(17.00),
                                                    right:
                                                        getHorizontalSize(30.00),
                                                    bottom:
                                                        getVerticalSize(17.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(21.00),
                                                    width:
                                                        getHorizontalSize(24.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgFrame2621,
                                                        fit: BoxFit.fill))))
                                      ])))
                            ])))
                  ]),
            )),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        // ),
      ),
    );
  }

  onTapGroup() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }
}
