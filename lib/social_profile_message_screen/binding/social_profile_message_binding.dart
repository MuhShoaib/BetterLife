import '../controller/social_profile_message_controller.dart';
import 'package:get/get.dart';

class SocialProfileMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileMessageController());
  }
}
