import 'package:better_life/core/utils/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/services/user_service.dart';
import '../core/utils/progress_dialog_utils.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController(), passwordController = TextEditingController();

  emailLogin() async {
    if (!formKey.currentState!.validate()) return;
    ProgressDialogUtils.showProgressDialog();
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) async {
        String uid = value.user!.uid;
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
    } on FirebaseAuthException catch (e) {
      ProgressDialogUtils.hideProgressDialog();
      switch (e.code) {
        case "user-not-found":
          customToast("Account not found");
          break;
        case "wrong-password":
          customToast("Password is incorrect");
          break;
        case "user-disabled":
          customToast("Account is disabled");
          break;
        case "invalid-email":
          customToast("Email format is invalid");
          break;
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
