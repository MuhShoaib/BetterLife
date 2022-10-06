import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:better_life/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../controllers/root_controller.dart';
import 'package:get/get.dart';

import '../core/utils/common.dart';

class Root extends GetView<RootController> {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Obx(() => controller.loading.value ? customCircularProgress() : controller.tabList[controller.currentIndex.value]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.openRecorder(),
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          backgroundColor: kBackgroundColor,
          activeColor: kWhiteColor,
          inactiveColor: kWhiteColor.withOpacity(0.5),
          icons: [
            controller.currentIndex.value == 0 ? Remix.home_4_fill : Remix.home_4_line,
            controller.currentIndex.value == 1 ? Remix.search_2_fill : Remix.search_2_line,
            controller.currentIndex.value == 2 ? Remix.message_2_fill : Remix.message_2_line,
            controller.currentIndex.value == 3 ? Remix.user_6_fill : Remix.user_6_line,
          ],
          activeIndex: controller.currentIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
          onTap: (index) => controller.currentIndex.value = index,
          //other params
        ),
      ),
    );
  }
}
