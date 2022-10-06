// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_viedo_upload2_screen/models/social_viedo_upload2_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_viedo_upload2_model.dart';

class SocialViedoUpload2Controller extends GetxController
    with GetSingleTickerProviderStateMixin, StateMixin<dynamic> {
  Rx<SocialViedoUpload2Model> socialViedoUpload2ModelObj =
      SocialViedoUpload2Model().obs;

  late TabController group80Controller =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
