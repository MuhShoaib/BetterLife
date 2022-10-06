// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_screen/models/social_model.dart';

import 'package:get/get.dart';

import '../models/social_model.dart';

class SocialController extends GetxController with StateMixin<dynamic> {
  Rx<SocialModel> socialModelObj = SocialModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
