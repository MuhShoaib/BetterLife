import '../controller/add_bank_controller.dart';
import 'package:get/get.dart';

class AddBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddBankController());
  }
}
