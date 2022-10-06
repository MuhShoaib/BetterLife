// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_requested_group_screen/models/social_requested_group_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_requested_group_model.dart';

class SocialRequestedGroupController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group124Controller = TextEditingController();

  TextEditingController group123Controller = TextEditingController();

  TextEditingController group126Controller = TextEditingController();

  TextEditingController group125Controller = TextEditingController();

  Rx<SocialRequestedGroupModel> socialRequestedGroupModelObj =
      SocialRequestedGroupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group124Controller.dispose();
    group123Controller.dispose();
    group126Controller.dispose();
    group125Controller.dispose();
  }
}
