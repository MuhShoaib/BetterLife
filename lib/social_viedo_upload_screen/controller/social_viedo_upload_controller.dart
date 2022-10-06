// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_viedo_upload_screen/models/social_viedo_upload_model.dart';

import 'package:get/get.dart';

import '../models/social_viedo_upload_model.dart';

class SocialViedoUploadController extends GetxController
    with StateMixin<dynamic> {
  Rx<SocialViedoUploadModel> socialViedoUploadModelObj =
      SocialViedoUploadModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
