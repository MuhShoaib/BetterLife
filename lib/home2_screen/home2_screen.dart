import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

import '../../core/widgets/home_appbar.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../core/utils/routes.dart';
import 'controller/home2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home2Screen extends GetWidget<Home2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        //backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),

             // // decoration: BoxDecoration(color: ColorConstant.gray900),
             //  decoration: BoxDecoration(color: Colors.grey.shade900),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeAppBar(),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(30.00),
                                top: getVerticalSize(30.00),
                                right: getHorizontalSize(30.00)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(10.00)),
                                      child: Text("lbl_good_morning".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),
                                          // style: AppStyle.textStyleIntermedium141
                                          //     .copyWith(fontSize: getFontSize(14))

                                      )),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: getVerticalSize(5.00)),
                                      child: Text("msg_today_s_breakdo".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900),
                                          // style: AppStyle.textStyleIntersemibold18
                                          //     .copyWith(fontSize: getFontSize(18)

                                          ))
                                ]))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(top: getVerticalSize(30.00)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: getHorizontalSize(27.00)),
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(45.00),
                                          width: getHorizontalSize(141.00),
                                          decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(30)),
                                          // decoration:
                                          //     AppDecoration.textStyleInterregular143,
                                          child: Text("msg_spiritual_healt".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),
                                              // style: AppStyle.textStyleInterregular143
                                              //     .copyWith(fontSize: getFontSize(14))


                                          ))),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: getHorizontalSize(15.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnMentalhealth();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(45.00),
                                              width: getHorizontalSize(133.00),
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                                border: Border.all(width: 2,color: Colors.white)
                                              ),
                                              // decoration:
                                              //     AppDecoration.textStyleInterregular141,
                                              child: Text("lbl_mental_health".tr,
                                                  textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),
                                                  // style: AppStyle.textStyleInterregular141
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(14))

                                              )

                                          )

                                      )),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: getHorizontalSize(15.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnFinancialhealt();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(45.00),
                                              width: getHorizontalSize(146.00),
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                                  border: Border.all(width: 2,color: Colors.white)
                                              ),
                                              // decoration:
                                              //     AppDecoration.textStyleInterregular141,
                                              child: Text("msg_financial_healt".tr,
                                                  textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),
                                                  // style: AppStyle.textStyleInterregular141
                                                  //     .copyWith(
                                                  //         fontSize: getFontSize(14))


                                              )


                                          )))
                                ]))),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        //Get.toNamed(AppRoutes.meditationScreen);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                            left: getHorizontalSize(30),
                            right: getHorizontalSize(30),
                          ),
                          decoration: BoxDecoration(
                            //color: ColorConstant.whiteA70019,
                         color: Colors.blueGrey.shade900,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    8.00,
                                  ),
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    7.00,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: getSize(
                                      50.00,
                                      ),
                                      width: getSize(
                                        50.00,
                                      ),
                                      child: SvgPicture.asset(

                                       // ImageConstant.imgMaskGroup16,
                                        "assets/images/reg.svg",
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10.00,
                                        ),
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          19.00,
                                        ),
                                      ),
                                      child: Text(
                                        "lbl_meditation".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white,fontSize: 12),
                                        // style: AppStyle.textStyleIntermedium12.copyWith(
                                        //   fontSize: getFontSize(
                                        //     12,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    23.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    22.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/Vector23.svg",
                                    // ImageConstant.imgVector23,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(AppRoutes.religionScreen);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                            left: getHorizontalSize(30),
                            right: getHorizontalSize(30),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade900,
                            //color: ColorConstant.whiteA70019,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    8.00,
                                  ),
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    7.00,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(

                                      height: getSize(
                                        50.00,
                                      ),
                                      width: getSize(
                                        50.00,
                                      ),
                                      child: SvgPicture.asset(
                                        //ImageConstant.imgMaskGroup17,
                                        "assets/images/reg.svg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10.00,
                                        ),
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          19.00,
                                        ),
                                      ),
                                      child: Text(
                                        "lbl_religion".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white,fontSize: 12),
                                        // style: AppStyle.textStyleIntermedium12.copyWith(
                                        //   fontSize: getFontSize(
                                        //     12,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    23.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                  bottom: getVerticalSize(
                                    22.00,
                                  ),
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                  child: SvgPicture.asset(
                                    //ImageConstant.imgVector23,
                                    "assets/images/Vector23.svg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnMentalhealth() {
   // Get.toNamed(AppRoutes.home3Screen);
  }

  onTapBtnFinancialhealt() {
    //Get.toNamed(AppRoutes.home4Screen);
  }
}
