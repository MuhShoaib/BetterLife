import 'package:better_life/core/services/user_service.dart';
import 'package:better_life/core/utils/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/progress_dialog_utils.dart';

class SignupController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController(),
      nameController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  emailSignup() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    ProgressDialogUtils.showProgressDialog();
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
        String uid = value.user!.uid;
        UserService.instance.createUser(uid: uid, email: emailController.text, name: nameController.text);
      });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          customToast("Account exists");
          break;
        case "weak-password":
          customToast("Password is weak");
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
    confirmPasswordController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
