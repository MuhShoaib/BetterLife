// import '/core/app_export.dart';
// import 'package:better_life/presentation/near_you_screen/models/near_you_model.dart';

import 'package:get/get.dart';

import '../models/near_you_model.dart';

class NearYouController extends GetxController with StateMixin<dynamic> {
  Rx<NearYouModel> nearYouModelObj = NearYouModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
