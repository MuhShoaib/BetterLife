import '../controller/social_profile_controller.dart';
import 'package:get/get.dart';

class SocialProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileController());
  }
}
