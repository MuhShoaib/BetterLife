import '../controller/question_of_the_day_controller.dart';
import 'package:get/get.dart';

class QuestionOfTheDayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionOfTheDayController());
  }
}
