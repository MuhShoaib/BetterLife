import 'package:better_life/core/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/progress_dialog_utils.dart';

class CompleteSurveyController extends GetxController {
  String? uid = Get.parameters["uid"];
  RxInt currentIndex = 0.obs;
  final PageController pageController = PageController();
  final TextEditingController zipcodeController = TextEditingController();
  RxList healthList = [].obs;
  RxString exerciseDays = "".obs,
      training = "".obs,
      mentalState = "".obs,
      mentalHealthSolution = "".obs,
      financial = "".obs,
      spiritualHealthSolution = "".obs;
  toggleList(String element) {
    if (healthList.contains(element)) {
      healthList.remove(element);
    } else {
      healthList.add(element);
    }
  }

  prevPage() {
    currentIndex.value--;
    pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  nextPage() {
    switch (currentIndex.value) {
      case 0:
        currentIndex.value++;
        pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        break;
      case 1:
        currentIndex.value++;
        pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        break;
      case 2:
        currentIndex.value++;
        pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        break;
      case 3:
        currentIndex.value++;
        pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        break;
      case 4:
        ProgressDialogUtils.showProgressDialog();
        UserService.instance.completeSurvey(uid: uid!, zipcode: zipcodeController.text, data: {
          "exerciseDays": exerciseDays.value,
          "training": training.value,
          "mentalState": mentalState.value,
          "mentalHealthSolution": mentalHealthSolution.value,
          "financial": financial.value,
          "spiritualHealthSolution": spiritualHealthSolution.value,
        });
        break;
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    zipcodeController.dispose();
    super.onClose();
  }
}
