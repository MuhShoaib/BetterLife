import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../social_profile_screen/models/social_profile_model.dart';
import '../Models/groups_model.dart';

class GroupViewModel extends GetxController {
  RxList<SocialProfileModel> groupList = <SocialProfileModel>[].obs;
  RxList<GroupModel> showgroupsList = <GroupModel>[].obs;
  RxList<SocialProfileModel> userList = <SocialProfileModel>[].obs;

  getUsers() async {
    Stream<QuerySnapshot<Object?>> inboxUserStream;
    inboxUserStream = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("following")
        .snapshots();
    inboxUserStream.listen((event) {
      // setState(() {
      userList.value = SocialProfileModel.jsonToListView(event.docs);
      // });
    });
  }

  showGroups() async {
    Stream<QuerySnapshot<Object?>> inboxUserStream;
    inboxUserStream = await FirebaseFirestore.instance
        .collection("groups")
        // .where("uid", arrayContains: FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
    inboxUserStream.listen((event) {
      // setState(() {
      showgroupsList.value = GroupModel.JsonToListView(event.docs);
      // });
    });
  }

  createGroup({
    required int time,
    required String gropName,
    required String createdBy,
    required List<SocialProfileModel> members,
  }) async {
    await FirebaseFirestore.instance.collection("groups").doc("${time}").set({
      "groupName": gropName,
      "createdAt": time,
      "createdBy": createdBy,
    });

    for (int i = 0; i < members.length; i++) {
      await FirebaseFirestore.instance
          .collection("groups")
          .doc("${time}")
          .collection("members")
          .doc(members[i].uid)
          .set({
        "uid": members[i].uid,
        "name": members[i].name,
        "email": members[i].email,
        "profilePicture": members[i].image,
      });
    }
  }
}
