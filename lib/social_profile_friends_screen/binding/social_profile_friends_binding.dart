import '../controller/social_profile_friends_controller.dart';
import 'package:get/get.dart';

class SocialProfileFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileFriendsController());
  }
}
