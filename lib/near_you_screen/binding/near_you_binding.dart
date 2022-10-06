import '../controller/near_you_controller.dart';
import 'package:get/get.dart';

class NearYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearYouController());
  }
}
