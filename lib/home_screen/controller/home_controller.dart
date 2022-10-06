// import '/core/app_export.dart';
// import 'package:better_life/presentation/home_screen/models/home_model.dart';

import 'package:better_life/home_screen/models/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
