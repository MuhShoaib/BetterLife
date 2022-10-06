import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/image_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/utils/routes.dart';
import 'package:better_life/core/widgets/home_appbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../add_bank_screen/widgets/add_bank_item_widget.dart';
import 'controller/add_bank_controller.dart';
import 'models/add_bank_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddBankScreen extends GetWidget<AddBankController> {
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
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Container(
                              //         width: double.infinity,
                              //         margin: EdgeInsets.only(
                              //             top: getVerticalSize(43.00)),
                              //         decoration: BoxDecoration(),
                              //         child: Column(
                              //             mainAxisSize: MainAxisSize.min,
                              //             crossAxisAlignment:
                              //                 CrossAxisAlignment.center,
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.start,
                              //             children: [
                              //               Align(
                              //                   alignment: Alignment.centerLeft,
                              //                   child: Container(
                              //                       width: size.width,
                              //                       margin: EdgeInsets.only(
                              //                           bottom: getVerticalSize(
                              //                               15.00)),
                              //                       child: Padding(
                              //                           padding: EdgeInsets.only(
                              //                               left:
                              //                                   getHorizontalSize(
                              //                                       30.00),
                              //                               right:
                              //                                   getHorizontalSize(
                              //                                       30.00)),
                              //                           child: Row(
                              //                               mainAxisAlignment:
                              //                                   MainAxisAlignment
                              //                                       .spaceBetween,
                              //                               crossAxisAlignment:
                              //                                   CrossAxisAlignment
                              //                                       .start,
                              //                               mainAxisSize:
                              //                                   MainAxisSize
                              //                                       .max,
                              //                               children: [
                              //                                 Padding(
                              //                                     padding: EdgeInsets.only(
                              //                                         bottom: getVerticalSize(
                              //                                             10.00)),
                              //                                     child: Container(
                              //                                         height: getVerticalSize(
                              //                                             15.74),
                              //                                         width: getHorizontalSize(
                              //                                             24.00),
                              //                                         child: SvgPicture.asset(
                              //                                             ImageConstant
                              //                                                 .imgFrame2621,
                              //                                             fit: BoxFit
                              //                                                 .fill))),
                              //                                 Container(
                              //                                     height:
                              //                                         getVerticalSize(
                              //                                             25.74),
                              //                                     width:
                              //                                         getHorizontalSize(
                              //                                             38.56),
                              //                                     child: SvgPicture.asset(
                              //                                         ImageConstant
                              //                                             .imgGroup15,
                              //                                         fit: BoxFit
                              //                                             .fill)),
                              //                                 ClipRRect(
                              //                                     borderRadius:
                              //                                         BorderRadius.circular(
                              //                                             getSize(
                              //                                                 12.87)),
                              //                                     child: Image.asset(
                              //                                         ImageConstant
                              //                                             .imgEllipse6,
                              //                                         height: getVerticalSize(
                              //                                             25.74),
                              //                                         width: getHorizontalSize(
                              //                                             40.00),
                              //                                         fit: BoxFit
                              //                                             .fill))
                              //                               ]))))
                              //             ]))),
                              HomeAppBar(),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.addBankModelObj
                                          .value.addBankItemList.length,
                                      itemBuilder: (context, index) {
                                        AddBankItemModel model = controller
                                            .addBankModelObj
                                            .value
                                            .addBankItemList[index];
                                        return AddBankItemWidget(model);
                                      }))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      top: getVerticalSize(154.00),
                                      right: getHorizontalSize(30.00),
                                      bottom: getVerticalSize(30.00)),
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapBtnAddnow();
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(50.00),
                                          width: getHorizontalSize(315.00),
                                          // decoration: AppDecoration
                                          //     .textStyleIntermedium143,
                                          decoration: BoxDecoration(
                                            color: kPrimaryColor,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Text("lbl_add_now".tr,
                                              textAlign: TextAlign.center,

                                              // style: AppStyle
                                              //     .textStyleIntermedium143
                                              //     .copyWith(
                                              //         fontSize:
                                              //             getFontSize(14))
                                          ))))
                            ]))))));
  }

  onTapBtnAddnow() {
    //Get.toNamed(AppRoutes.currentBalanceRecurringChargesScreen);
  }
}
