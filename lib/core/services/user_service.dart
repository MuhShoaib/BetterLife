import 'dart:io';

import 'package:better_life/core/utils/common.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../../core/constants/collections.dart';
import '../utils/progress_dialog_utils.dart';

class UserService {
  static UserService instance = UserService();

  void createUser({required String uid, required String email, required String name}) async {
    await usersCollection.doc(uid).set({
      "uid":uid,
      "email": email.toLowerCase(),
      "name": name.trim(),
      "createdOn": DateTime.now(),
      "accountCompleted": false,
      "surveyCompleted": false,
      "profilePicture":
          "https://firebasestorage.googleapis.com/v0/b/better-life-dbb22.appspot.com/o/noavatar_male.png?alt=media&token=58b7e7d1-bc14-4b28-bf9d-0a0cb271eee9",
    });
    Get.offAllNamed("/complete_account", parameters: {"uid": uid});
  }

  void completeUser({required String uid, required Map data}) async {
    await usersCollection.doc(uid).update({"info": data, "accountCompleted": true});
    Get.offAllNamed("/complete_survey", parameters: {"uid": uid});
  }

  void completeSurvey({required String uid, required String zipcode, required Map data}) async {
    await usersCollection.doc(uid).update({"survey": data, "zipcode": zipcode, "surveyCompleted": true});
    customToast("Survey completed");
    Get.offAllNamed("/root", parameters: {"uid": uid});
  }

  Future<Map> checkAccount(String uid) async {
    DocumentSnapshot snapshot = await usersCollection.doc(uid).get();
    return {
      "accountCompleted": snapshot["accountCompleted"],
      "surveyCompleted": snapshot["surveyCompleted"],
    };
  }

  void createPost({
    required String uid,
    required List categories,
    required bool canComment,
    required bool canShare,
    required bool isPrivate,
    required String videoPath,
    required String caption,
    required String thumbnail,
  }) async {
    ProgressDialogUtils.showProgressDialog();
    DateTime currentDT = DateTime.now();
    final storageRef = FirebaseStorage.instance.ref();
    String ext1 = videoPath.split(".").last;
    String ext2 = thumbnail.split(".").last;

    final postsVideoRef = storageRef.child("posts/$uid/video_${currentDT.millisecondsSinceEpoch}.$ext1");
    final postsThumbnailRef = storageRef.child("posts/$uid/thumbnail_${currentDT.millisecondsSinceEpoch}.$ext2");
    try {
      await postsVideoRef.putFile(File(videoPath));
      await postsThumbnailRef.putFile(File(thumbnail));
    } on FirebaseException catch (e) {
      print(e);
      customToast("Error While uploading");
      return;
    }

    await postsCollection.add({
      "active": true,
      "canComment": canComment,
      "canShare": canShare,
      "caption": caption.trim(),
      "categories": categories,
      "commentCount": 0,
      "isPrivate": isPrivate,
      "loveCount": 0,
      "owner": uid,
      "posted": currentDT,
      "shareCount": 0,
      "loves": [],
      "thumbnail": await postsThumbnailRef.getDownloadURL(),
      "videoURL": await postsVideoRef.getDownloadURL(),
      "views": 0,
    });
    Get.back();
    customToast("Post uploaded successfully");
  }
}
