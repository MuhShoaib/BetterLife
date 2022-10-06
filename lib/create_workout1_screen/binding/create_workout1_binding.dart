import '../controller/create_workout1_controller.dart';
import 'package:get/get.dart';

class CreateWorkout1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkout1Controller());
  }
}
