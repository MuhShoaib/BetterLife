import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:remixicon/remixicon.dart';
import 'package:timeago/timeago.dart' as time_ago;
import '../core/constants/collections.dart';
import '../core/services/post_service.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/common.dart';
import '../core/utils/styles.dart';

class CommentsController extends GetxController {
  final TextEditingController commentController = TextEditingController();

  openCommentsSheet(String uid, String postOwner, String postID) {
    Get.bottomSheet(KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return SizedBox(
        height: isKeyboardVisible ? Get.height / 3 : Get.height / 1.4,
        child: Column(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Remix.arrow_down_s_line),
              color: kWhiteColor,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: postsCollection.doc(postID).collection("comments").orderBy("time", descending: true).snapshots(),
                  builder: (context, commentSnapshot) {
                    if (!commentSnapshot.hasData) return customCircularProgress();
                    List<DocumentSnapshot> commentList = commentSnapshot.data!.docs;
                    return ListView.separated(
                      padding: const EdgeInsets.all(15),
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => commentBox(commentList[index]),
                      itemCount: commentList.length,
                      separatorBuilder: (BuildContext context, int index) => Divider(color: kWhiteColor.withOpacity(0.5)),
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: kBackgroundColor),
              child: Column(
                children: [
                  TextFormField(
                    controller: commentController,
                    style: fontBody(color: kWhiteColor),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.2),
                      filled: true,
                      hintText: "Write your comment",
                      suffixIcon: IconButton(
                        icon: const Icon(Remix.send_plane_fill),
                        color: kPrimaryColor,
                        onPressed: () async {
                          if (commentController.text.isEmpty) {
                            return;
                          }
                          await PostService.instance.addComment(uid: uid, postID: postID, comment: commentController.text.trim());
                          commentController.clear();
                        },
                      ),
                      hintStyle: fontBody(color: kWhiteColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }),
        isScrollControlled: true,
        enableDrag: false,
        persistent: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: kBackgroundColor);
  }

  Widget commentBox(DocumentSnapshot commentData) => FutureBuilder<DocumentSnapshot>(
      future: usersCollection.doc(commentData["commentator"]).get(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return ListTile(tileColor: Colors.grey.withOpacity(0.2));
        DocumentSnapshot data = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: data["profilePicture"],
                  height: 35,
                  width: 35,
                ),
              ),
              minLeadingWidth: 0,
              title: Text(data["name"], style: fontBody(fontSize: 12, fontWeight: FontWeight.w500, color: kWhiteColor)),
              subtitle: Text(
                time_ago.format(commentData["time"].toDate()),
                style: fontBody(fontSize: 10, color: kWhiteColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: ReadMoreText(
                commentData["comment"],
                trimLines: 2,
                style: fontBody(fontSize: 12, color: kWhiteColor),
                colorClickableText: kPrimaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'more',
                trimExpandedText: 'less',
              ),
            ),
          ],
        );
      });

  @override
  void onClose() {
    commentController.dispose();
    super.onClose();
  }
}
