import '../controller/healthy_habits_controller.dart';
import 'package:get/get.dart';

class HealthyHabitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthyHabitsController());
  }
}
