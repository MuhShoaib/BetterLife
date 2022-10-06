import '../controller/healthy_habits1_controller.dart';
import 'package:get/get.dart';

class HealthyHabits1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthyHabits1Controller());
  }
}
