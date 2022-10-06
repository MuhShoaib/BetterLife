import 'package:get/get.dart';

import '../../controllers/completeaccount_controller.dart';
import '../../controllers/completesurvey_controller.dart';
import '../../controllers/login_controller.dart';
import '../../controllers/root_controller.dart';
import '../../controllers/signup_controller.dart';
import '../../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}

class CompleteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompleteAccountController>(() => CompleteAccountController());
  }
}

class CompleteSurveyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompleteSurveyController>(() => CompleteSurveyController());
  }
}

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
  }
}
