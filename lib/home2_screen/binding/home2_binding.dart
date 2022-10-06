import '../controller/home2_controller.dart';
import 'package:get/get.dart';

class Home2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home2Controller());
  }
}
