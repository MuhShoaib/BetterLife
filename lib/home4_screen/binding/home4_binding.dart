import '../controller/home4_controller.dart';
import 'package:get/get.dart';

class Home4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home4Controller());
  }
}
