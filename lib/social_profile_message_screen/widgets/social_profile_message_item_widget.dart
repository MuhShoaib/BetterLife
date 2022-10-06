import 'package:get/get.dart';

import '../../chat_screen/View/chat_screem.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../social_profile_message1_screen/social_profile_message1_screen.dart';
import '../../social_profile_screen/models/social_profile_model.dart';
import '../controller/social_profile_message_controller.dart';
import '../models/social_profile_message_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialProfileMessageItemWidget extends StatelessWidget {
  SocialProfileMessageItemWidget(this.index, {this.onTapGroup});

  final index;

  var controller = Get.find<SocialProfileMessageController>();

  VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          // onTapGroup!();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreeen(
                    socialProfileModel: SocialProfileModel(
                  name: controller
                      .socialProfileMessageList[index].name,
                  email: controller
                      .socialProfileMessageList[index].email,
                  uid: controller
                      .socialProfileMessageList[index].uid,
                  image: controller
                      .socialProfileMessageList[index].image,
                )),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(
            top: getVerticalSize(
              5.00,
            ),
            bottom: getVerticalSize(
              5.00,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade900,
            // color: ColorConstant.bluegray900,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
            boxShadow: [
              BoxShadow(
                // color: ColorConstant.black9000a,
                spreadRadius: getHorizontalSize(
                  2.00,
                ),
                blurRadius: getHorizontalSize(
                  2.00,
                ),
                offset: Offset(
                  2,
                  2,
                ),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    10.00,
                  ),
                  bottom: getVerticalSize(
                    10.00,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: getSize(
                        50.00,
                      ),
                      width: getSize(
                        50.00,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getSize(
                                  25.00,
                                ),
                              ),
                              child: Image.network(
                                controller
                                    .socialProfileMessageList[index].image,
                                // ImageConstant.imgEllipse13,
                                height: getSize(
                                  50.00,
                                ),
                                width: getSize(
                                  50.00,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(
                                10.00,
                              ),
                              width: getSize(
                                10.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  10.00,
                                ),
                                right: getHorizontalSize(
                                  5.00,
                                ),
                                bottom: getVerticalSize(
                                  2.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                // color: ColorConstant.greenA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                border: Border.all(
                                  // color: ColorConstant.bluegray900,
                                  width: getHorizontalSize(
                                    1.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          10.00,
                        ),
                        bottom: getVerticalSize(
                          9.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.socialProfileMessageList[index].name}"
                                .tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),

                            // style: AppStyle.textStyleIntermedium141.copyWith(
                            //   fontSize: getFontSize(
                            //     14,
                            //   ),
                            // ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                9.00,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Container(
                              width: 260,
                              // color: Colors.purple,
                              child: Text(
                                "${controller.socialProfileMessageList[index].email}"
                                    .tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.white),
                                // style: AppStyle.textStyleInterregular12.copyWith(
                                //   fontSize: getFontSize(
                                //     12,
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     left: getHorizontalSize(
              //       107.00,
              //     ),
              //     top: getVerticalSize(
              //       10.00,
              //     ),
              //     right: getHorizontalSize(
              //       10.00,
              //     ),
              //     bottom: getVerticalSize(
              //       45.00,
              //     ),
              //   ),
              //   child: Text(
              //     "lbl_1_minutes_ago".tr,
              //     overflow: TextOverflow.ellipsis,
              //     textAlign: TextAlign.right,
              //     // style: AppStyle.textStyleIntermedium123.copyWith(
              //     //   fontSize: getFontSize(
              //     //     12,
              //     //   ),
              //     // ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
