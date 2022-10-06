import '../controller/sleep_controller.dart';
import 'package:get/get.dart';

class SleepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SleepController());
  }
}
