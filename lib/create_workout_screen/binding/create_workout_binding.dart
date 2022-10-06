import '../controller/create_workout_controller.dart';
import 'package:get/get.dart';

class CreateWorkoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkoutController());
  }
}
