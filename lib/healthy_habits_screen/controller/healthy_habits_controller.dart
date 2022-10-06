// import '/core/app_export.dart';
// import 'package:better_life/presentation/healthy_habits_screen/models/healthy_habits_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/healthy_habits_model.dart';

class HealthyHabitsController extends GetxController with StateMixin<dynamic> {
  TextEditingController group178Controller = TextEditingController();

  TextEditingController group179Controller = TextEditingController();

  Rx<HealthyHabitsModel> healthyHabitsModelObj = HealthyHabitsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group178Controller.dispose();
    group179Controller.dispose();
  }
}
