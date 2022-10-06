// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_message1_screen/models/social_profile_message1_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_profile_message1_model.dart';

class SocialProfileMessage1Controller extends GetxController
    with StateMixin<dynamic> {
  TextEditingController frame1427Controller = TextEditingController();

  Rx<SocialProfileMessage1Model> socialProfileMessage1ModelObj =
      SocialProfileMessage1Model().obs;

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
