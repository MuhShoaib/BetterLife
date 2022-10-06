import 'package:better_life/core/constants/collections.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostService {
  static PostService instance = PostService();

  void toggleLoves({required String pid, required String uid}) async {
    await postsCollection.doc(pid).get().then((value) async {
      if (value["loves"].contains(uid)) {
        await postsCollection.doc(pid).update({
          "loves": FieldValue.arrayRemove([uid]),
          "loveCount": FieldValue.increment(-1),
        });
      } else {
        await postsCollection.doc(pid).update({
          "loves": FieldValue.arrayUnion([uid]),
          "loveCount": FieldValue.increment(1),
        });
      }
    });
  }

  Future<bool> addComment({required String uid, required String postID, required String comment}) async {
    await postsCollection.doc(postID).collection("comments").add({
      "comment": comment.trim(),
      "time": DateTime.now(),
      "commentator": uid,
      "likes": [],
    });
    await postsCollection.doc(postID).update({"commentCount": FieldValue.increment(1)});
    return true;
  }
}
