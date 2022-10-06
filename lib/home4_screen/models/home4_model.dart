import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'home3_item_model.dart';

class Home4Model {
  RxList<Home3ItemModel> home3ItemList = [
  //  Home3ItemModel(

        //icon: "ImageConstant.imgMaskgroup22", title: "Reccuring Charges"),
   // Home3ItemModel(icon: ImageConstant.imgMaskgroup23, title: "Investments"),
    Home3ItemModel(icon: "assets/images/fin.svg", title: "Reccuring Charges"),
    Home3ItemModel(icon: "assets/images/fin.svg", title: "Investments"),
    Home3ItemModel(icon: "assets/images/fin.svg", title: "News"),
    //Home3ItemModel(icon: ImageConstant.imgMaskgroup24, title: "News"),
  ].obs;
}
