// import '/core/app_export.dart';
// import 'package:better_life/presentation/social_profile_screen/models/social_profile_model.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../models/post_model.dart';
import '../models/social_profile_model.dart';

class SocialProfileController extends GetxController with StateMixin<dynamic> {
  // Rx<SocialProfileModel> socialProfileModelObj = SocialProfileModel().obs;

  SocialProfileModel socialProfileModel = SocialProfileModel(name: "", email: "", uid: "", image: "");

  RxList<PostProfileModel> list = <PostProfileModel>[].obs;

  RxBool post = true.obs;
  RxBool likes = false.obs;

  getLikesonPost(){

  }

  getCurrentUser() async {
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    socialProfileModel = SocialProfileModel.fromJson(documentSnapshot);
  }

  getUserPost() {
    Stream<QuerySnapshot<Object?>>? inboxUserStream;
    inboxUserStream =
        FirebaseFirestore.instance.collection("posts").snapshots();
    inboxUserStream!.listen((event) {
      list.value = PostProfileModel.jsonToListView(event.docs)
          .where((element) =>
              element.owner == FirebaseAuth.instance.currentUser!.uid)
          .toList();
    });
    print("ist.value.length");
    print(list.value.length);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
