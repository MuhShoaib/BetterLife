import '../controller/food_tracker_controller.dart';
import 'package:get/get.dart';

class FoodTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodTrackerController());
  }
}
