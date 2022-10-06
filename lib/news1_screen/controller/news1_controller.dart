// import '/core/app_export.dart';
// import 'package:better_life/presentation/news1_screen/models/news1_model.dart';

import 'package:get/get.dart';

import '../models/news1_model.dart';

class News1Controller extends GetxController with StateMixin<dynamic> {
  Rx<News1Model> news1ModelObj = News1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
