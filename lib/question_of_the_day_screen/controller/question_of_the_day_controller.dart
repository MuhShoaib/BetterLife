// import '/core/app_export.dart';
// import 'package:better_life/presentation/question_of_the_day_screen/models/question_of_the_day_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/question_of_the_day_model.dart';

class QuestionOfTheDayController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group713Controller = TextEditingController();

  Rx<QuestionOfTheDayModel> questionOfTheDayModelObj =
      QuestionOfTheDayModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group713Controller.dispose();
  }
}
