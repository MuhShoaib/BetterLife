import '../controller/social_viedo_upload2_controller.dart';
import 'package:get/get.dart';

class SocialViedoUpload2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialViedoUpload2Controller());
  }
}
