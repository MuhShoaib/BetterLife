import '../controller/social_viedo_upload_controller.dart';
import 'package:get/get.dart';

class SocialViedoUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialViedoUploadController());
  }
}
