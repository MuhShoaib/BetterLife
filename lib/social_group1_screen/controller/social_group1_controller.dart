// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_group1_screen/models/social_group1_model.dart';

import 'package:get/get.dart';

import '../models/social_group1_model.dart';

class SocialGroup1Controller extends GetxController with StateMixin<dynamic> {
  Rx<SocialGroup1Model> socialGroup1ModelObj = SocialGroup1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
