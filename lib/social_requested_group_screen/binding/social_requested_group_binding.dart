import '../controller/social_requested_group_controller.dart';
import 'package:get/get.dart';

class SocialRequestedGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialRequestedGroupController());
  }
}
