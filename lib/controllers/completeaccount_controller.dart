import 'package:better_life/core/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/progress_dialog_utils.dart';

class CompleteAccountController extends GetxController {
  String? uid = Get.parameters["uid"];
  RxString selectedGender = "Others".obs, selectedWeightUnit = "KG".obs, selectedHeightUnit = "IN".obs;
  RxInt currentIndex = 0.obs;
  final PageController pageController = PageController();
  RxInt selectedWeight = 35.obs, selectedHeight = 35.obs;
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
        ProgressDialogUtils.showProgressDialog();
        UserService.instance.completeUser(uid: uid!, data: {
          "gender": selectedGender.value,
          "weightUnit": selectedWeightUnit.value,
          "heightUnit": selectedHeightUnit.value,
          "height": selectedWeight.value,
          "weight": selectedHeight.value,
        });
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
