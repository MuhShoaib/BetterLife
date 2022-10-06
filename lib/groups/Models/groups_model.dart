import 'package:cloud_firestore/cloud_firestore.dart';

import '../../social_profile_screen/models/social_profile_model.dart';

class GroupModel{
  String createdBy, groupName;
  int createdAt;
  SocialProfileModel members;

  GroupModel({
    required this.createdBy,
    required this.createdAt,
    required this.groupName,
    required this.members,
  });

  factory GroupModel.fromJson(DocumentSnapshot snapshot) {
    return GroupModel(
      createdBy: (snapshot.data() as dynamic)["createdBy"] ?? " ",
      createdAt: (snapshot.data() as dynamic)["createdAt"] ??0,
      groupName: (snapshot.data() as dynamic)["groupName"] ?? " ",
      members: SocialProfileModel.fromJson(snapshot),
    );
  }

  Map<String, dynamic> toJson(GroupModel model) {
    return {
      "createdBy": model.createdBy,
      "createdAt": model.createdAt,
      "groupName": model.groupName,
    };
  }

  static List<GroupModel> JsonToListView(List<DocumentSnapshot> jsonList) {
    return jsonList.map((e) => GroupModel.fromJson(e)).toList();
  }
}

// class Members{
//   String createdBy, groupName;
//   double createdAt;
//   List<SocialProfileModel> members;
//
//   Members({
//     required this.createdBy,
//     required this.createdAt,
//     required this.groupName,
//     required this.members,
//   });
//
//   factory Members.fromJson(DocumentSnapshot snapshot) {
//     return Members(
//       createdBy: (snapshot.data() as dynamic)["createdBy"] ?? " ",
//       createdAt: (snapshot.data() as dynamic)["createdAt"] ??0.0,
//       groupName: (snapshot.data() as dynamic)["groupName"] ?? " ",
//       members: (snapshot.data() as dynamic)["groupName"] ?? " ",
//     );
//   }
//
//   Map<String, dynamic> toJson(GroupModel model) {
//     return {
//       "createdBy": model.createdBy,
//       "createdAt": model.createdAt,
//       "groupName": model.groupName,
//     };
//   }
//
//   static List<Members> JsonToListView(List<DocumentSnapshot> jsonList) {
//     return jsonList.map((e) => Members.fromJson(e)).toList();
//   }
// }
