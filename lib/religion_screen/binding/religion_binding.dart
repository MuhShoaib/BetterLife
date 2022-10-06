import '../controller/religion_controller.dart';
import 'package:get/get.dart';

class ReligionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReligionController());
  }
}
