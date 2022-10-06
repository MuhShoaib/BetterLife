// import '/core/app_export.dart';
// import 'package:better_life/presentation/news_screen/models/news_model.dart';

import 'package:get/get.dart';

import '../models/news_model.dart';

class NewsController extends GetxController with StateMixin<dynamic> {
  Rx<NewsModel> newsModelObj = NewsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
