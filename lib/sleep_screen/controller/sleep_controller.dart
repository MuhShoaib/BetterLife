// import '/core/app_export.dart';
// import 'package:better_life/presentation/sleep_screen/models/sleep_model.dart';

import 'package:get/get.dart';

import '../models/sleep_model.dart';

class SleepController extends GetxController with StateMixin<dynamic> {
  Rx<SleepModel> sleepModelObj = SleepModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
