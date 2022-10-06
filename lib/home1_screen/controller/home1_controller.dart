
import 'package:get/get.dart';

import '../models/home1_model.dart';

class Home1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Home1Model> home1ModelObj = Home1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
