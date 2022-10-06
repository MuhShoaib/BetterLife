// import '/core/app_export.dart';
// import 'package:better_life/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/sign_in_model.dart';

class SignInController extends GetxController with StateMixin<dynamic> {
  TextEditingController frame34Controller = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController frame207Controller = TextEditingController();

  TextEditingController frame205Controller = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame34Controller.dispose();
    passwordController.dispose();
    passwordController1.dispose();
    frame207Controller.dispose();
    frame205Controller.dispose();
  }
}
