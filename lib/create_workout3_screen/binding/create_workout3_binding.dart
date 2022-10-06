import '../controller/create_workout3_controller.dart';
import 'package:get/get.dart';

class CreateWorkout3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkout3Controller());
  }
}
