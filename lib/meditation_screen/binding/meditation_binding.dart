import '../controller/meditation_controller.dart';
import 'package:get/get.dart';

class MeditationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MeditationController());
  }
}
