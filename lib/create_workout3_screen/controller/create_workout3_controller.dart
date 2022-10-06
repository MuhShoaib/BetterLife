// import '/core/app_export.dart';
// import 'package:better_life/presentation/create_workout3_screen/models/create_workout3_model.dart';

import 'package:get/get.dart';

import '../models/create_workout3_model.dart';

class CreateWorkout3Controller extends GetxController with StateMixin<dynamic> {
  Rx<CreateWorkout3Model> createWorkout3ModelObj = CreateWorkout3Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
