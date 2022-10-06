import '../controller/current_balance_recurring_charges_controller.dart';
import 'package:get/get.dart';

class CurrentBalanceRecurringChargesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrentBalanceRecurringChargesController());
  }
}
