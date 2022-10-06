// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_message2_screen/models/social_profile_message2_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_profile_message2_model.dart';

class SocialProfileMessage2Controller extends GetxController
    with StateMixin<dynamic> {
  TextEditingController frame1427Controller = TextEditingController();

  Rx<SocialProfileMessage2Model> socialProfileMessage2ModelObj =
      SocialProfileMessage2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame1427Controller.dispose();
  }
}
