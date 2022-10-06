import '../controller/social_profile_love_controller.dart';
import 'package:get/get.dart';

class SocialProfileLoveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileLoveController());
  }
}
