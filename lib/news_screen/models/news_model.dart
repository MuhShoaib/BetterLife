import 'package:get/get.dart';
import 'news_item_model.dart';

class NewsModel {
  RxList<NewsItemModel> newsItemList = RxList.filled(3, NewsItemModel());
}
