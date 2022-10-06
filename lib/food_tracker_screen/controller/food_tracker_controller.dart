// import '/core/app_export.dart';
// import 'package:better_life/presentation/food_tracker_screen/models/food_tracker_model.dart';

import 'package:get/get.dart';

import '../models/food_tracker_model.dart';

class FoodTrackerController extends GetxController with StateMixin<dynamic> {
  Rx<FoodTrackerModel> foodTrackerModelObj = FoodTrackerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
