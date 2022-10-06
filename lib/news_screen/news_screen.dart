import 'package:better_life/core/utils/math_utils.dart';
import 'package:get/get.dart';

import '../../core/widgets/home_appbar.dart';
import '../news_screen/widgets/news_item_widget.dart';
import 'controller/news_controller.dart';
import 'models/news_item_model.dart';
// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsScreen extends GetWidget<NewsController> {
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
                              HomeAppBar(),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(30.00),
                                      right: getHorizontalSize(30.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .newsModelObj.value.newsItemList.length,
                                      itemBuilder: (context, index) {
                                        NewsItemModel model = controller
                                            .newsModelObj.value.newsItemList[index];
                                        return NewsItemWidget(model,
                                            onTapGroup: onTapGroup);
                                      })))
                            ]))))));
  }

  onTapGroup() {
    // Get.toNamed(AppRoutes.news1Screen);
  }
}
