import '../controller/create_workout4_controller.dart';
import 'package:get/get.dart';

class CreateWorkout4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkout4Controller());
  }
}
