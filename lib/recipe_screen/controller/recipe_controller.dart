// import '/core/app_export.dart';
// import 'package:better_life/presentation/recipe_screen/models/recipe_model.dart';

import 'package:get/get.dart';

import '../models/recipe_model.dart';

class RecipeController extends GetxController with StateMixin<dynamic> {
  Rx<RecipeModel> recipeModelObj = RecipeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
