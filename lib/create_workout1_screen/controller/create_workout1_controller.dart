// import '/core/app_export.dart';
// import 'package:better_life/presentation/create_workout1_screen/models/create_workout1_model.dart';

import 'package:get/get.dart';

import '../models/create_workout1_model.dart';

class CreateWorkout1Controller extends GetxController with StateMixin<dynamic> {
  Rx<CreateWorkout1Model> createWorkout1ModelObj = CreateWorkout1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
