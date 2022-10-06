// import '/core/app_export.dart';
// import 'package:better_life/presentation/food_tracker1_screen/models/food_tracker1_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/food_tracker1_model.dart';

class FoodTracker1Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController frame1065Controller = TextEditingController();

  Rx<FoodTracker1Model> foodTracker1ModelObj = FoodTracker1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame1065Controller.dispose();
  }
}
