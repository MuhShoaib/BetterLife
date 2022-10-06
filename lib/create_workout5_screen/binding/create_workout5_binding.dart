import '../controller/create_workout5_controller.dart';
import 'package:get/get.dart';

class CreateWorkout5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWorkout5Controller());
  }
}
