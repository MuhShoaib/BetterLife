// import '/core/app_export.dart';
// import 'package:better_life/presentation/create_workout2_screen/models/create_workout2_model.dart';

import 'package:get/get.dart';

import '../models/create_workout2_model.dart';

class CreateWorkout2Controller extends GetxController with StateMixin<dynamic> {
  Rx<CreateWorkout2Model> createWorkout2ModelObj = CreateWorkout2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
