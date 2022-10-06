// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_group_screen/models/social_group_model.dart';

import 'package:get/get.dart';

import '../models/social_group_model.dart';

class SocialGroupController extends GetxController with StateMixin<dynamic> {
  Rx<SocialGroupModel> socialGroupModelObj = SocialGroupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
