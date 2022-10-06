import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../near_you_screen/widgets/near_you_item_widget.dart';
import 'controller/near_you_controller.dart';
import 'models/near_you_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NearYouScreen extends GetWidget<NearYouController> {
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
                              Container(
                                  width: double.infinity,
                                  height: getVerticalSize(75),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text("lbl_social".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      // style: AppStyle
                                                      //     .textStyleIntersemibold142
                                                      //     .copyWith(
                                                      //         fontSize: getFontSize(14),
                                                      //         letterSpacing: 0.70,
                                                      //         color: Colors.white)
                                                  ),
                                                  Container(
                                                      height: getVerticalSize(16.00),
                                                      width: getHorizontalSize(2.00),
                                                      margin: EdgeInsets.only(
                                                          left: getHorizontalSize(10.00),
                                                          top: getVerticalSize(0.50),
                                                          bottom: getVerticalSize(0.50)),
                                                      decoration: BoxDecoration(
                                                          // color:
                                                          //     ColorConstant.whiteA700
                                                      )),
                                                  GestureDetector(
                                                      onTap: () {
                                                        // onTapTxtNearyou();
                                                      },
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(8.00),
                                                              top: getVerticalSize(1.00),
                                                              bottom:
                                                                  getVerticalSize(1.00)),
                                                          child: Text("lbl_near_you".tr,
                                                              overflow:
                                                                  TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              // style: AppStyle
                                                              //     .textStyleIntersemibold121
                                                              //     .copyWith(
                                                              //         fontSize:
                                                              //             getFontSize(12),
                                                              //         letterSpacing:
                                                              //             0.60)
                                                                        )
                                                      ))
                                                ]),
                                            Container(
                                                height: getVerticalSize(21.00),
                                                width: getHorizontalSize(24.00),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                    child: Icon(
                                                      Icons.search,
                                                      color: Colors.white,
                                                      size: getHorizontalSize(24.00),
                                                    ))),
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(25.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(25.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .nearYouModelObj.value.nearYouItemList.length,
                                      itemBuilder: (context, index) {
                                        NearYouItemModel model = controller
                                            .nearYouModelObj.value.nearYouItemList[index];
                                        return NearYouItemWidget(model,
                                            onTapBtnFollowing: onTapBtnFollowing);
                                      })))
                            ]))))));
  }

  onTapBtnFollowing() {
    // Get.toNamed(AppRoutes.socialProfileMessage1Screen);
  }

  onTapTxtSocial() {
    // Get.toNamed(AppRoutes.socialScreen);
  }
}
