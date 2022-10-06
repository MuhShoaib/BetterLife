// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/get.dart';
// import 'social_profile_friends_item_model.dart';
//
// class SocialProfileFriendsModel {
//   // RxList<SocialProfileFriendsItemModel> socialProfileFriendsItemList =
//   //     RxList.filled(14, SocialProfileFriendsItemModel());
//
//   String name;
//   String email;
//   String uid;
//   String image;
//
//   SocialProfileFriendsModel({
//     required this.name,
//     required this.email,
//     required this.uid,
//     required this.image,
//   });
//
//   factory SocialProfileFriendsModel.fromJson(DocumentSnapshot snapshot) {
//     return SocialProfileFriendsModel(
//       name: (snapshot.data() as dynamic)["name"] ?? " ",
//       email: (snapshot.data() as dynamic)["email"] ?? " ",
//       uid: (snapshot.data() as dynamic)["uid"] ?? " ",
//       image: (snapshot.data() as dynamic)["profilePicture"] ?? " ",
//     );
//   }
//
//   static List<SocialProfileFriendsModel> jsonToListView(List<DocumentSnapshot> jsonList) {
//     return jsonList.map((e) => SocialProfileFriendsModel.fromJson(e)).toList();
//   }
// }
