import '../controller/social_controller.dart';
import 'package:get/get.dart';

class SocialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialController());
  }
}
