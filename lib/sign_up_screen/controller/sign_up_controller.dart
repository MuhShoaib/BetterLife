// import '/core/app_export.dart';
// import 'package:better_life/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/sign_up_model.dart';

class SignUpController extends GetxController with StateMixin<dynamic> {
  TextEditingController frame34Controller = TextEditingController();

  TextEditingController frame34Controller1 = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController frame207Controller = TextEditingController();

  TextEditingController frame205Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame34Controller.dispose();
    frame34Controller1.dispose();
    passwordController.dispose();
    passwordController1.dispose();
    frame207Controller.dispose();
    frame205Controller.dispose();
  }
}
