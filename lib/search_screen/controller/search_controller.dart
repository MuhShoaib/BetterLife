// import '/core/app_export.dart';
// import 'package:better_life/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/search_model.dart';

class SearchController extends GetxController with StateMixin<dynamic> {
  TextEditingController group48Controller = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group48Controller.dispose();
  }
}
