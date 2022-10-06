import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../VideoSceen.dart';
import '../controller/social_profile_controller.dart';
import '../models/social_profile_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SocialProfileItemWidget extends StatelessWidget {
  SocialProfileItemWidget(this.index);

  final index;

  var controller = Get.find<SocialProfileController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(VideoScreen(uid: FirebaseAuth.instance.currentUser!.uid,));
      },
      child: Container(
        height: getSize(
          100.00,
        ),
        width: getSize(
          100.00,
        ),
        child: Obx(() =>
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.network(
                  controller.list.value[index].thumbnail,
                  //ImageConstant.imgUnsplashl9zhig1,
                  height: getSize(
                    100.00,
                  ),
                  width: getSize(
                    100.00,
                  ),
                  fit: BoxFit.cover,
                ),
                controller.likes.value ? Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          "${controller.list[index].loveCount}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ) : SizedBox(),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(
                //         getHorizontalSize(
                //           5.00,
                //         ),
                //       ),
                //       gradient: LinearGradient(
                //         begin: Alignment(
                //           8.326672684688674e-17,
                //           5.412337245047638e-16,
                //         ),
                //         end: Alignment(
                //           0.050000003671646365,
                //           0.3050000087320812,
                //         ),
                //         colors: [
                //           // ColorConstant.gray900D1,
                //           // ColorConstant.gray90000,
                //         ],
                //       ),
                //     ),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisSize: MainAxisSize.max,
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(
                //             left: getHorizontalSize(
                //               5.00,
                //             ),
                //             top: getVerticalSize(
                //               4.50,
                //             ),
                //             bottom: getVerticalSize(
                //               88.50,
                //             ),
                //           ),
                //           child: Container(
                //             height: getVerticalSize(
                //               7.00,
                //             ),
                //             width: getHorizontalSize(
                //               8.00,
                //             ),
                //             child: Icon(Icons.favorite)
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.only(
                //             left: getHorizontalSize(
                //               2.00,
                //             ),
                //             top: getVerticalSize(
                //               3.00,
                //             ),
                //             right: getHorizontalSize(
                //               68.00,
                //             ),
                //             bottom: getVerticalSize(
                //               87.00,
                //             ),
                //           ),
                //           child: Text(
                //             "lbl_2_6k".tr,
                //             overflow: TextOverflow.ellipsis,
                //             textAlign: TextAlign.center,
                //             // style: AppStyle.textStyleIntermedium8.copyWith(
                //             //   fontSize: getFontSize(
                //             //     8,
                //             //   ),
                //             // ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            )),
      ),
    );
  }
}
