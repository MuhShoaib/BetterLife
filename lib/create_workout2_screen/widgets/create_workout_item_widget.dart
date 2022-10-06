import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/create_workout2_controller.dart';
import '../models/create_workout_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CreateWorkoutItemWidget extends StatelessWidget {
  CreateWorkoutItemWidget(this.createWorkoutItemModelObj);

  CreateWorkoutItemModel createWorkoutItemModelObj;

  var controller = Get.find<CreateWorkout2Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
          // color: ColorConstant.bluegray900,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              5.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  10.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                26.00,
                              ),
                            ),
                            child: Image.asset(
                              ImageConstant.imgUnsplashe3weha,
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
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                16.00,
                              ),
                              right: getHorizontalSize(
                                16.00,
                              ),
                              bottom: getVerticalSize(
                                16.00,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup976,
                                fit: BoxFit.fill,
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
                      top: getVerticalSize(
                        18.00,
                      ),
                      right: getHorizontalSize(
                        186.00,
                      ),
                      bottom: getVerticalSize(
                        17.00,
                      ),
                    ),
                    child: Text(
                      "lbl_deadlift".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleInterbold12.copyWith(
                      //   fontSize: getFontSize(
                      //     12,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  10.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "lbl_set".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleIntermedium12.copyWith(
                      //   fontSize: getFontSize(
                      //     12,
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        37.00,
                      ),
                      right: getHorizontalSize(
                        214.00,
                      ),
                    ),
                    child: Text(
                      "lbl_reps".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
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
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                315.00,
              ),
              margin: EdgeInsets.only(
                top: getVerticalSize(
                  5.00,
                ),
              ),
              decoration: BoxDecoration(
                // color: ColorConstant.whiteA700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  19.00,
                ),
                top: getVerticalSize(
                  4.00,
                ),
                right: getHorizontalSize(
                  19.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        8.00,
                      ),
                      bottom: getVerticalSize(
                        7.00,
                      ),
                    ),
                    child: Text(
                      "lbl_1".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      // style: AppStyle.textStyleIntermedium12.copyWith(
                      //   fontSize: getFontSize(
                      //     12,
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        45.00,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        30.00,
                      ),
                      width: getHorizontalSize(
                        45.00,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgFrame1194,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    20.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                  bottom: getVerticalSize(
                    10.00,
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    35.00,
                  ),
                  width: getHorizontalSize(
                    295.00,
                  ),
                  decoration: BoxDecoration(
                    // color: ColorConstant.tealA400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        22.50,
                      ),
                    ),
                  ),
                  child: Text(
                    "lbl_add_set".tr,
                    textAlign: TextAlign.left,
                    // style: AppStyle.textStyleIntersemibold122.copyWith(
                    //   fontSize: getFontSize(
                    //     12,
                    //   ),
                    // ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
