// import '/core/app_export.dart';
// import 'package:better_life/presentation/investments_screen/models/investments_model.dart';

import 'package:get/get.dart';

import '../models/investments_model.dart';

class InvestmentsController extends GetxController with StateMixin<dynamic> {
  Rx<InvestmentsModel> investmentsModelObj = InvestmentsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
