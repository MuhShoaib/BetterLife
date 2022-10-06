import '../controller/home3_controller.dart';
import 'package:get/get.dart';

class Home3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home3Controller());
  }
}
