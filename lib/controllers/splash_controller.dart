import 'package:better_life/core/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../social_profile_message_screen/controller/social_profile_message_controller.dart';

class SplashController extends GetxController {
  checkAuth() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser == null ? "" : auth.currentUser!.uid!;

    Future.delayed(const Duration(seconds: 1), () async {
      if (uid.isEmpty) {
        Get.offAllNamed("/login");
        return;
      }
      Map check = await UserService.instance.checkAccount(uid);
      if (!check["accountCompleted"]) {
        Get.offAllNamed("/complete_account", parameters: {"uid": uid});
        return;
      }
      if (!check["surveyCompleted"]) {
        Get.offAllNamed("/complete_survey", parameters: {"uid": uid});
        return;
      }
      Get.offAllNamed("/root", parameters: {"uid": uid});
    });
  }


  @override
  void onInit() {
    print("splash");
    checkAuth();
    super.onInit();
  }
}
