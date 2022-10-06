import 'package:get/get.dart';
import '../../core/utils/image_constant.dart';
import 'home2_item_model.dart';

class Home3Model {
  RxList<Home2ItemModel> home2ItemList = [
    Home2ItemModel(icon: ImageConstant.imgMaskgroup18, title: "Journal"),
    Home2ItemModel(
        icon: ImageConstant.imgMaskgroup19, title: "Question of the Day"),
    Home2ItemModel(icon: ImageConstant.imgMaskgroup20, title: "Therapy"),
    Home2ItemModel(icon: ImageConstant.imgMaskgroup21, title: "Healthy Habits"),
  ].obs;
}
