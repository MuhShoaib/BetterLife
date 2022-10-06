import '../controller/create_workout2_controller.dart';
import 'package:get/get.dart';

class CreateWorkout2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkout2Controller());
  }
}
