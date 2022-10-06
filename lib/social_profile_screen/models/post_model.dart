import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'social_profile_item_model.dart';

class PostProfileModel {
  // RxList<SocialProfileItemModel> socialProfileItemList =
  //     RxList.filled(15, SocialProfileItemModel());

  String owner;
  String thumbnail;
  int loveCount ;

  // String uid;
  // String image;

  PostProfileModel({
    required this.owner,
    required this.thumbnail,
    required this.loveCount,
    // required this.uid,
    // required this.image,
  });

  factory PostProfileModel.fromJson(DocumentSnapshot snapshot) {
    return PostProfileModel(
      owner: (snapshot.data() as dynamic)["owner"] ?? " ",
      thumbnail: (snapshot.data() as dynamic)["thumbnail"] ?? " ",
      loveCount: (snapshot.data() as dynamic)["loveCount"] ?? " ",
      // uid: (snapshot.data() as dynamic)["uid"] ?? " ",
      // image: (snapshot.data() as dynamic)["profilePicture"] ?? " ",
    );
  }

  static List<PostProfileModel> jsonToListView(
      List<DocumentSnapshot> jsonList) {
    return jsonList.map((e) => PostProfileModel.fromJson(e)).toList();
  }
}
