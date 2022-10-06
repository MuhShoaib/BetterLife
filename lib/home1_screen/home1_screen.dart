// import 'package:get/get.dart';

import 'package:get/get.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../core/utils/routes.dart';
import '../home1_screen/widgets/home1_item_widget.dart';
import 'controller/home1_controller.dart';
import 'models/home1_item_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home1Screen extends GetWidget<Home1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //  backgroundColor: Colors.grey.shade500,
            //backgroundColor:Colors.pink ,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(),
                        //decoration: BoxDecoration(color: Colors.grey.shade500),
                       // decoration: BoxDecoration(color: kBlueGreyColor),
                        decoration: BoxDecoration(color: kBackgroundColor),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(5.00)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgFrame262();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            30.00),
                                                        top: getVerticalSize(
                                                            20.00),
                                                        bottom: getVerticalSize(
                                                            24.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            21.00),
                                                        width:
                                                            getHorizontalSize(
                                                                24.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgFrame2621,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        106.00),
                                                    top: getVerticalSize(19.00),
                                                    right: getHorizontalSize(
                                                        159.00),
                                                    bottom:
                                                        getVerticalSize(24.00)),
                                                child: Text(
                                                  "lbl_profile".tr,
                                                  style: TextStyle(color: Colors.white),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  // style: AppStyle.textStyleIntermedium18.copyWith(fontSize: getFontSize(18))
                                                  //
                                                ))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getSize(75.00),
                                            width: getSize(75.00),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      getSize(
                                                                          37.50)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgElipse,
                                                              height: getSize(
                                                                  75.00),
                                                              width: getSize(
                                                                  75.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  10.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      7.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          // child: Container(
                                                          //     height: getSize(
                                                          //         14.00),
                                                          //     width: getSize(
                                                          //         14.00),
                                                          //     child: SvgPicture.asset(
                                                          //         ImageConstant
                                                          //             .imgFrame10481,
                                                          //         fit: BoxFit
                                                          //             .fill))/
                                                      )

                                                                            )
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                right:
                                                    getHorizontalSize(75.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Text(
                                                        "lbl_paityn_herwitz".tr,
                                                        style: TextStyle(color: Colors.white),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        //style: AppStyle.textStyleIntermedium141.copyWith(fontSize: getFontSize(14))
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              11.00)),
                                                      child: Text(
                                                        "msg_asdsadkksl_gmai"
                                                            .tr,
                                                        style: TextStyle(color: Colors.white),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        //style: AppStyle.textStyleInterregular14.copyWith(fontSize: getFontSize(14))
                                                      )),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              11.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        19.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                child: Image.asset("assets/images/Vector.png"),
                                                                
                                                                // child: SvgPicture.asset(
                                                                //     ImageConstant
                                                                //         .imgVector14,
                                                                //     fit: BoxFit
                                                                //         .fill)
                                                            
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        5.00),
                                                                    top: getVerticalSize(
                                                                        1.00),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            1.00)),
                                                                child: Text(
                                                                  "lbl_female"
                                                                      .tr,
                                                                  style: TextStyle(color: kPrimaryColor),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  //style: AppStyle.textStyleInterregular142.copyWith(fontSize: getFontSize(14))
                                                                ))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(40.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(154.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.home1ModelObj.value
                                          .home1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Home1ItemModel model = controller
                                            .home1ModelObj
                                            .value
                                            .home1ItemList[index];
                                        return Home1ItemWidget(model,
                                            onTapGroup: onTapGroup);
                                      })))
                            ]))))));
  }

  onTapGroup() {
    //Get.toNamed(AppRoutes.home4Screen);
  }

  onTapImgFrame262() {
    //Get.toNamed(AppRoutes.homeScreen);
  }
}
