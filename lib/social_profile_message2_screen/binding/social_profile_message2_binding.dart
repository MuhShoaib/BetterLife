import '../controller/social_profile_message2_controller.dart';
import 'package:get/get.dart';

class SocialProfileMessage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileMessage2Controller());
  }
}
