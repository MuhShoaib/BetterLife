import 'package:get/get.dart';

import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../current_balance_recurring_charges_screen/widgets/frame992_item_widget.dart';
import '../current_balance_recurring_charges_screen/widgets/group1345_item_widget.dart';
import 'controller/current_balance_recurring_charges_controller.dart';
import 'models/frame992_item_model.dart';
import 'models/group1345_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentBalanceRecurringChargesScreen
    extends GetWidget<CurrentBalanceRecurringChargesController> {
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
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(43.00)),
                                      decoration: BoxDecoration(),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    margin: EdgeInsets.only(
                                                        bottom: getVerticalSize(
                                                            15.00)),
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    30.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    30.00)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      bottom: getVerticalSize(
                                                                          10.00)),
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          15.74),
                                                                      width: getHorizontalSize(
                                                                          24.00),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgFrame262,
                                                                          fit: BoxFit
                                                                              .fill))),
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          25.74),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          38.56),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgGroup,
                                                                      fit: BoxFit
                                                                          .fill)),
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getSize(
                                                                              12.87)),
                                                                  child: Image.asset(
                                                                      ImageConstant
                                                                          .imgEllipse6,
                                                                      height: getVerticalSize(
                                                                          25.74),
                                                                      width: getHorizontalSize(
                                                                          40.00),
                                                                      fit: BoxFit
                                                                          .fill))
                                                            ]))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(210.00),
                                      width: size.width,
                                      child: Obx(() => ListView.builder(
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(30.00)),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .currentBalanceRecurringChargesModelObj
                                              .value
                                              .frame992ItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            Frame992ItemModel model = controller
                                                .currentBalanceRecurringChargesModelObj
                                                .value
                                                .frame992ItemList[index];
                                            return Frame992ItemWidget(model);
                                          })))),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(30.00)),
                                  decoration: BoxDecoration(
                                      // color: ColorConstant.whiteA70019,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(10.00)),
                                      boxShadow: [
                                        BoxShadow(
                                            // color: ColorConstant.black90005,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 4))
                                      ]),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(15.00),
                                                bottom: getVerticalSize(19.00)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("msg_monthly_transfe".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      // style: AppStyle
                                                      //     .textStyleIntermedium141
                                                      //     .copyWith(
                                                      //         fontSize:
                                                      //             getFontSize(
                                                      //                 14))
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              4.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Text(
                                                          "msg_20_000_to_40".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          // style: AppStyle
                                                          //     .textStyleInterregular12
                                                          //     .copyWith(
                                                          //         fontSize:
                                                          //             getFontSize(
                                                          //                 12))
                                                      ))
                                                ])),
                                        Container(
                                            height: getSize(36.00),
                                            width: getSize(36.00),
                                            margin: EdgeInsets.only(
                                                top: getVerticalSize(15.00),
                                                right: getHorizontalSize(10.00),
                                                bottom: getVerticalSize(19.00)),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  13.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      8.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      13.00)),
                                                          child: Text("lbl_83".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .center,
                                                              // style: AppStyle
                                                              //     .textStyleIntermedium82
                                                              //     .copyWith(
                                                              //         fontSize:
                                                              //             getFontSize(8))
                                                          ))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height:
                                                              getSize(36.00),
                                                          width: getSize(36.00),
                                                      //     child: CircularProgressIndicator(
                                                      //         value: 0.5,
                                                      //         backgroundColor:
                                                      //             // ColorConstant
                                                      //             //     .whiteA70019,
                                                      //         // valueColor: AlwaysStoppedAnimation<
                                                      //         //         Color>(
                                                      //         //     ColorConstant
                                                      //         //         .tealA400)
                                                      // )
                                                  ))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(25.00),
                                          right: getHorizontalSize(30.00)),
                                      child: Text("msg_recurring_charg".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle.textStyleIntermedium18
                                          //     .copyWith(
                                          //         fontSize: getFontSize(18))
                                      ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .currentBalanceRecurringChargesModelObj
                                          .value
                                          .group1345ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Group1345ItemModel model = controller
                                            .currentBalanceRecurringChargesModelObj
                                            .value
                                            .group1345ItemList[index];
                                        return Group1345ItemWidget(model);
                                      }))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(15.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Text("lbl_see_more".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      // style: AppStyle.textStyleIntermedium141
                                      //     .copyWith(
                                      //         fontSize: getFontSize(14))
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(25.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(30.00)),
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtnLinkyourbank();
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(50.00),
                                          width: getHorizontalSize(315.00),
                                          // decoration: AppDecoration
                                          //     .textStyleIntermedium143,
                                          child: Text("lbl_link_your_bank".tr,
                                              textAlign: TextAlign.center,
                                              // style: AppStylntermedium143
                                              //     .copyWith(
                                              //     fontSize:
                                              //     getFontSize(14))e
                                              //     .textStyl/eI
                                          ))))
                            ]))))));
  }

  onTapBtnLinkyourbank() {
    // Get.toNamed(AppRoutes.addBankScreen);
  }
}
