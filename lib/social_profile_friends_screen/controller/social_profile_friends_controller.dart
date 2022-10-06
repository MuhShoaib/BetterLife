// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_friends_screen/models/social_profile_friends_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../social_profile_message_screen/models/social_profile_message_model.dart';
import '../../social_profile_screen/models/social_profile_model.dart';
import '../models/social_profile_friends_model.dart';

class SocialProfileFriendsController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController group129Controller = TextEditingController();

  // Rx<SocialProfileFriendsModel> socialProfileFriendsModelObj =
  //     SocialProfileFriendsModel().obs;

  RxList<SocialProfileModel> userList = <SocialProfileModel>[].obs;
  // RxList List = [].obs;
  RxBool following = true.obs;

  // RxList followedUid = [].obs;
  // RxString followeerUid = "".obs;

  RxBool msg = false.obs;
  RxBool followBack = true.obs;

  checkFollowingforMsg() async {
    // followBack.value = false;
    print("checkFollowingforMsg");
    for (int j = 0; j < userList.value.length; j++) {
      // print(userList.value.length);
      // if(list.value[i].uid==)
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection("users")
          .doc(userList.value[j].uid)
          .get();

      for (int i = 0; i < doc["following"].length; i++) {
        if (doc["following"][i] == FirebaseAuth.instance.currentUser!.uid) {
          msg.value = true;
        } else {
          msg.value = false;
        }
      }
    }
  }

  getFollowerFormsg() async {
    print("getFollowerFormsg");
    // msg.value = false;
    for (int j = 0; j < userList.value.length; j++) {
      // print(userList.value.length);
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      for (int i = 0; i < doc["followers"].length; i++) {
        if (doc["followers"][i] == userList.value[j].uid) {
          followBack.value = false;
        } else {
          followBack.value = true;
        }
      }
    }
  }

  getFollowers() async {
    // list.value.clear();
    Stream<QuerySnapshot<Object?>> inboxUserStream;
    inboxUserStream = await FirebaseFirestore.instance
        .collection("users").
    doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("followers")
        .snapshots();
    inboxUserStream.listen((event) {
      userList.value = SocialProfileModel.jsonToListView(event.docs);
    });
  }

  getFollowing() async {
    Stream<QuerySnapshot<Object?>> inboxUserStream;
    inboxUserStream = await FirebaseFirestore.instance
        .collection("users").
    doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("following")
        .snapshots();
    inboxUserStream.listen((event) {
      userList.value = SocialProfileModel.jsonToListView(event.docs);
    });;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    // group129Controller.dispose();
  }
}
