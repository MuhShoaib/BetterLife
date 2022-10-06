import '../controller/social_group_controller.dart';
import 'package:get/get.dart';

class SocialGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialGroupController());
  }
}
