import 'package:get/get.dart';

import '../core/utils/math_utils.dart';
import '../social_group_screen/widgets/social_group_item_widget.dart';
import 'controller/social_group_controller.dart';
import 'models/social_group_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialGroupScreen extends GetWidget<SocialGroupController> {
  final controller = Get.put(SocialGroupController());

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
              decoration: BoxDecoration(
                  // color: ColorConstant.gray900,
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(5),
                      bottom: getVerticalSize(15),
                    ),
                  ),
                  Text(
                    "GROUPS",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        20.00,
                      ),
                      top: getVerticalSize(
                        20.00,
                      ),
                      right: getHorizontalSize(
                        20.00,
                      ),
                      bottom: getVerticalSize(
                        408.00,
                      ),
                    ),
                    child: Obx(
                      () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.socialGroupModelObj.value
                            .socialGroupItemList.length,
                        itemBuilder: (context, index) {
                          SocialGroupItemModel model = controller
                              .socialGroupModelObj
                              .value
                              .socialGroupItemList[index];
                          return SocialGroupItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
