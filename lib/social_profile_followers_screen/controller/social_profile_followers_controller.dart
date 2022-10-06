// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_followers_screen/models/social_profile_followers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_profile_followers_model.dart';

class SocialProfileFollowersController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group130Controller = TextEditingController();

  Rx<SocialProfileFollowersModel> socialProfileFollowersModelObj =
      SocialProfileFollowersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group130Controller.dispose();
  }
}
