import '../controller/social_profile_followers_controller.dart';
import 'package:get/get.dart';

class SocialProfileFollowersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileFollowersController());
  }
}
