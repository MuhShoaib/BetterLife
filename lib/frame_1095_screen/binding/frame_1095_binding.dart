import '../controller/frame_1095_controller.dart';
import 'package:get/get.dart';

class Frame1095Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame1095Controller());
  }
}
