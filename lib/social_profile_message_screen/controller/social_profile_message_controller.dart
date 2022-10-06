// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_message_screen/models/social_profile_message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/social_profile_message_item_model.dart';
import '../models/social_profile_message_model.dart';

class SocialProfileMessageController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group118Controller = TextEditingController();

  RxList<SocialProfileMessageModel> socialProfileMessageList =
      <SocialProfileMessageModel>[].obs;

  getInbox() async {
    // if (FirebaseAuth.instance.currentUser == null) {
    //   setInbox();
    // } else {
    //   print("user");
    // }

    // setInbox();
    // SocialProfileMessageModel? socialProfileMessageModel;
    Stream<QuerySnapshot<Object?>>? inboxUserStream;
    inboxUserStream = FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("inbox")
        .snapshots();
    inboxUserStream!.listen((event) {
      socialProfileMessageList.value =
          SocialProfileMessageModel.jsonToListView(event.docs)
              .where((element) =>
          element.uid != FirebaseAuth.instance.currentUser!.uid)
              .toList();
    });
    print("event.doc");
    print(socialProfileMessageList.value.length);

    // return socialProfileMessageList;
  }

  // List list = [];
  //
  // Future<void> setInbox() async {
  //   DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get();
  //
  //   String currentUserName = (documentSnapshot.data() as dynamic)["name"] ?? "";
  //   String currentUserimage = (documentSnapshot
  //       .data() as dynamic)["profilePicture"] ?? "";
  //
  //   Stream<QuerySnapshot<Object?>>? inboxUserStream;
  //   // QuerySnapshot<Object?>? obj=FirebaseFirestore.instance.collection("users").snapshots();
  //   inboxUserStream =
  //       FirebaseFirestore.instance.collection("users").snapshots();
  //   inboxUserStream!.listen((event) {
  //     list = event.docs.where((element) => element["uid"] !=
  //         FirebaseAuth.instance.currentUser!.uid).toList();
  //     // print(event.docs[0].data());
  //   });
  //   if (socialProfileMessageList.value.length != list.length) {
  //     for (int i = 0; i < list.length; i++) {
  //       print("currentUserName");
  //       print(FirebaseAuth.instance.currentUser!.uid);
  //       // print(list[i]["email"]);
  //
  //       await FirebaseFirestore.instance
  //           .collection("users")
  //           .doc(FirebaseAuth.instance.currentUser!.uid)
  //           .collection("inbox")
  //           .doc(list[i]["uid"])
  //           .set({
  //         "email": list[i]["email"],
  //         "uid": list[i]["uid"],
  //         "name": list[i]["name"],
  //         "image": list[i]["profilePicture"] ?? "",
  //       });
  //
  //       await FirebaseFirestore.instance
  //           .collection("users")
  //           .doc("${list[i]["uid"]}")
  //           .collection("inbox")
  //           .doc(FirebaseAuth.instance.currentUser!.uid)
  //           .set({
  //         "name": currentUserName,
  //         "uid": FirebaseAuth.instance.currentUser!.uid,
  //         "email": FirebaseAuth.instance.currentUser!.email,
  //         "image": currentUserimage,
  //       });
  //     }
  //   }
  //   else {
  //     print("shoaib");
  //   }
  // }

  @override
  void onReady() {
    super.onReady();
  }

  //
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   setInbox();
  //   super.onInit();
  // }

  @override
  void onClose() {
    super.onClose();
    group118Controller.dispose();
  }
}
