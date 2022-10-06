import 'package:get/get.dart';

import '../../core/utils/math_utils.dart';
import '../controller/near_you_controller.dart';
import '../models/near_you_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NearYouItemWidget extends StatelessWidget {
  NearYouItemWidget(this.nearYouItemModelObj, {this.onTapBtnFollowing});

  NearYouItemModel nearYouItemModelObj;

  var controller = Get.find<NearYouController>();

  VoidCallback? onTapBtnFollowing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          5.00,
        ),
        bottom: getVerticalSize(
          5.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  5.00,
                ),
                right: getHorizontalSize(
                  5.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/icons/profileStoryAdd.png',
                          height: getSize(
                            35.00,
                          ),
                          width: getSize(
                            35.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            11.00,
                          ),
                        ),
                        child: Text(
                          "Gavin wants to grab a \nbite with someone.......",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          // style: AppStyle.textStyleIntermedium10.copyWith(
                          //   fontSize: getFontSize(
                          //     10,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        5.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        onTapBtnFollowing!();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          25.00,
                        ),
                        width: getHorizontalSize(
                          75.00,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            getSize(
                              5.00,
                            ),
                          ),
                        ),
                        child: Text(
                          "MESSAGE",
                          textAlign: TextAlign.left,
                          // style: AppStyle.textStyleIntermedium102.copyWith(
                          //   color: Colors.black,
                          //   fontSize: getFontSize(
                          //     10,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
