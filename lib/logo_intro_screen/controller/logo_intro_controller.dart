// import '/core/app_export.dart';
// import 'package:better_life/presentation/logo_intro_screen/models/logo_intro_model.dart';

import 'package:get/get.dart';

import '../models/logo_intro_model.dart';

class LogoIntroController extends GetxController with StateMixin<dynamic> {
  Rx<LogoIntroModel> logoIntroModelObj = LogoIntroModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
