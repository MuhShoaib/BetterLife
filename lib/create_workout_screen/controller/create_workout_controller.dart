// import '/core/app_export.dart';
// import 'package:better_life/presentation/create_workout_screen/models/create_workout_model.dart';
import 'package:better_life/create_workout_screen/models/create_workout_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateWorkoutController extends GetxController with StateMixin<dynamic> {
  TextEditingController group980Controller = TextEditingController();

  Rx<CreateWorkoutModel> createWorkoutModelObj = CreateWorkoutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group980Controller.dispose();
  }
}
