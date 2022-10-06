// import '/core/app_export.dart';
// import 'package:better_life/presentation/healthy_habits1_screen/models/healthy_habits1_model.dart';

import 'package:get/get.dart';

import '../models/healthy_habits1_model.dart';

class HealthyHabits1Controller extends GetxController with StateMixin<dynamic> {
  Rx<HealthyHabits1Model> healthyHabits1ModelObj = HealthyHabits1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
