// import '/core/app_export.dart';
// import 'package:better_life/presentation/meditation_screen/models/meditation_model.dart';

import 'package:get/get.dart';

import '../models/meditation_model.dart';

class MeditationController extends GetxController with StateMixin<dynamic> {
  Rx<MeditationModel> meditationModelObj = MeditationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
