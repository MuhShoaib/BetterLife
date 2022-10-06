import '../controller/news1_controller.dart';
import 'package:get/get.dart';

class News1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => News1Controller());
  }
}
