// import '/core/app_export.dart';
// import 'package:better_life/presentation/journal_screen/models/journal_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/journal_model.dart';

class JournalController extends GetxController with StateMixin<dynamic> {
  TextEditingController group713Controller = TextEditingController();

  Rx<JournalModel> journalModelObj = JournalModel().obs;

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
