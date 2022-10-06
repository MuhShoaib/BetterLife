import '../controller/logo_intro_controller.dart';
import 'package:get/get.dart';

class LogoIntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogoIntroController());
  }
}
