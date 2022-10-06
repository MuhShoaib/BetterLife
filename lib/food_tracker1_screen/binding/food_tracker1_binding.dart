import '../controller/food_tracker1_controller.dart';
import 'package:get/get.dart';

class FoodTracker1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodTracker1Controller());
  }
}
