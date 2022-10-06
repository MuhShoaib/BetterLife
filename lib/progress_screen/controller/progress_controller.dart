// import '/core/app_export.dart';
// import 'package:better_life/presentation/progress_screen/models/progress_model.dart';

import 'package:get/get.dart';

import '../models/progress_model.dart';

class ProgressController extends GetxController with StateMixin<dynamic> {
  Rx<ProgressModel> progressModelObj = ProgressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
