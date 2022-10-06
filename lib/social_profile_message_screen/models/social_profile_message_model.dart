import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'social_profile_message_item_model.dart';

class SocialProfileMessageModel {
  // RxList<SocialProfileMessageItemModel> socialProfileMessageItemList =
  //     RxList.filled(5, SocialProfileMessageItemModel());
  String name;
  String email;
  String uid;
  String image;

  SocialProfileMessageModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.image,
  });

  factory SocialProfileMessageModel.fromJson(DocumentSnapshot snapshot) {
    return SocialProfileMessageModel(
      name: (snapshot.data() as dynamic)["name"] ?? " ",
      email: (snapshot.data() as dynamic)["email"] ?? " ",
      uid: (snapshot.data() as dynamic)["uid"] ?? " ",
      image: (snapshot.data() as dynamic)["image"] ?? " ",
    );
  }

  static List<SocialProfileMessageModel> jsonToListView(List<DocumentSnapshot> jsonList) {
    return jsonList.map((e) => SocialProfileMessageModel.fromJson(e)).toList();
  }
}
