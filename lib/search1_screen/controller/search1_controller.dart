// import '/core/app_export.dart';
// import 'package:better_life/presentation/search1_screen/models/search1_model.dart';import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../social_profile_screen/models/social_profile_model.dart';
import '../models/search1_model.dart';

class Search1Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController group56Controller = TextEditingController();

  Rx<Search1Model> search1ModelObj = Search1Model().obs;
  RxList<SocialProfileModel> list = <SocialProfileModel>[].obs;
  RxBool followed = false.obs;

  // DocumentSnapshot? doc;
  RxString UserName = ''.obs;
  getUserName() async {
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

      UserName.value = (doc.data() as dynamic)["name"] ?? " ";
  }

  followUser({required SocialProfileModel user}) async {
    getUserName();
    for(int i=0;i<list.value.length;i++) {
      if (list.value[i].uid != user.uid) {
        await FirebaseFirestore.instance
            .collection("users")
            .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("following").doc(user.uid).set({
          "uid": user.uid,
          "email": user.email,
          "name": user.name,
          "createdOn": DateTime.now(),
          "accountCompleted": false,
          "surveyCompleted": false,
          "profilePicture":
          "https://firebasestorage.googleapis.com/v0/b/better-life-dbb22.appspot.com/o/noavatar_male.png?alt=media&token=58b7e7d1-bc14-4b28-bf9d-0a0cb271eee9",

        });

        await FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .collection("following").doc(FirebaseAuth.instance.currentUser!.uid).set({
          "uid": FirebaseAuth.instance.currentUser!.uid,
          "email": FirebaseAuth.instance.currentUser!.email,
          "name": UserName.value,
          "createdOn": DateTime.now(),
          "accountCompleted": false,
          "surveyCompleted": false,
          "profilePicture":
          "https://firebasestorage.googleapis.com/v0/b/better-life-dbb22.appspot.com/o/noavatar_male.png?alt=media&token=58b7e7d1-bc14-4b28-bf9d-0a0cb271eee9",

        });


      }
      // else{
      //   followed.value = true;
      // }

    }
  }


  getUsers() {
    Stream<QuerySnapshot<Object?>>? inboxUserStream;
    inboxUserStream =
        FirebaseFirestore.instance.collection("users").snapshots();
    inboxUserStream!.listen((event) {
      list.value = SocialProfileModel.jsonToListView(event.docs);
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // checkFollow(uid)
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // group56Controller.dispose();
  }
}
