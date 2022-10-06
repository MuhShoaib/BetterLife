// import '/core/app_export.dart';
// import 'package:better_life/presentation/food_screen/models/food_model.dart';

import 'package:get/get.dart';

import '../models/food_model.dart';

class FoodController extends GetxController with StateMixin<dynamic> {
  Rx<FoodModel> foodModelObj = FoodModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
