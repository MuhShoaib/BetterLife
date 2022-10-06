// import '/core/app_export.dart';
// import 'package:better_life/presentation/religion_screen/models/religion_model.dart';

import 'package:get/get.dart';

import '../models/religion_model.dart';

class ReligionController extends GetxController with StateMixin<dynamic> {
  Rx<ReligionModel> religionModelObj = ReligionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
