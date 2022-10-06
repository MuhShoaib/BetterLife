import 'package:better_life/controllers/comments_controller.dart';
import 'package:better_life/core/utils/routes.dart';
import 'package:better_life/search1_screen/binding/search1_binding.dart';
import 'package:better_life/social_profile_message_screen/controller/social_profile_message_controller.dart';
import 'package:better_life/social_profile_screen/controller/social_profile_controller.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search1_screen/controller/search1_controller.dart';
import '../search1_screen/search1_screen.dart';
import '../search1_screen/search_tabs_root.dart';
import '../social_profile_message_screen/social_profile_message_screen.dart';
import '../social_profile_screen/social_profile_screen.dart';
import '../views/recorder/video_recorder.dart';
import '../views/tabs/home_tab.dart';

class RootController extends GetxController {
  String? uid = Get.parameters["uid"];
  RxBool loading = true.obs;
  RxInt currentIndex = 0.obs;
  List tabList = [];

  @override
  void onInit() {
    tabList = [
      HomeTab(uid: uid!),
      SearchTabRoot(),
      SocialProfileMessageScreen(),
      SocialProfileScreen(),
    ];


    loading.value = false;
    Get.put(CommentsController());
    Get.put(SearchTabRoot());
    Get.put(SocialProfileMessageController());
    Get.put(SocialProfileController());

    super.onInit();
  }

  openRecorder() async {
    List<CameraDescription> cameras = await availableCameras();
    Get.to(()=>VideoRecorder(uid: uid!, cameras: cameras), transition: Transition.cupertinoDialog);
  }
}
