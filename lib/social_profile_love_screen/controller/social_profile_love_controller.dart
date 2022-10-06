import 'package:get/get.dart';

import '../models/social_profile_love_model.dart';
// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_love_screen/models/social_profile_love_model.dart';

class SocialProfileLoveController extends GetxController
    with StateMixin<dynamic> {
  Rx<SocialProfileLoveModel> socialProfileLoveModelObj =
      SocialProfileLoveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
