import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'social_profile_item_model.dart';

class SocialProfileModel {
  // RxList<SocialProfileItemModel> socialProfileItemList =
  //     RxList.filled(15, SocialProfileItemModel());

  String name;
  String email;
  String uid;
  String image;

  SocialProfileModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.image,
  });

  factory SocialProfileModel.fromJson(DocumentSnapshot snapshot) {
    return SocialProfileModel(
      name: (snapshot.data() as dynamic)["name"] ?? " ",
      email: (snapshot.data() as dynamic)["email"] ?? " ",
      uid: (snapshot.data() as dynamic)["uid"] ?? " ",
      image: (snapshot.data() as dynamic)["profilePicture"] ?? " ",
    );
  }

  Map<String, dynamic> toJson(SocialProfileModel model) {
    return {
      "name": model.name,
      "email": model.email,
      "uid": model.uid,
      "image": model.image,
    };
  }

  static List<SocialProfileModel> jsonToListView(List<DocumentSnapshot> jsonList) {
    return jsonList.map((e) => SocialProfileModel.fromJson(e)).toList();
  }
}
