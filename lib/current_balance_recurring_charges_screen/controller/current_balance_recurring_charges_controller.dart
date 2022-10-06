import 'package:get/get.dart';

import '../models/current_balance_recurring_charges_model.dart';

class CurrentBalanceRecurringChargesController extends GetxController
    with StateMixin<dynamic> {
  Rx<CurrentBalanceRecurringChargesModel>
      currentBalanceRecurringChargesModelObj =
      CurrentBalanceRecurringChargesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
