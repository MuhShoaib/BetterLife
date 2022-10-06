import '../controller/social_group1_controller.dart';
import 'package:get/get.dart';

class SocialGroup1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialGroup1Controller());
  }
}
