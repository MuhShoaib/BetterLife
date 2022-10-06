import '../controller/social_profile_message1_controller.dart';
import 'package:get/get.dart';

class SocialProfileMessage1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialProfileMessage1Controller());
  }
}
