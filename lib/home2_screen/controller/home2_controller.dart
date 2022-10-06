import 'package:get/get.dart';

import '../models/home2_model.dart';

import 'package:flutter/material.dart';

class Home2Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController group180Controller = TextEditingController();

  TextEditingController group181Controller = TextEditingController();

  Rx<Home2Model> home2ModelObj = Home2Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group180Controller.dispose();
    group181Controller.dispose();
  }
}
