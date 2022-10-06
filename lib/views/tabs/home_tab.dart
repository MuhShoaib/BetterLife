import 'package:auto_size_text/auto_size_text.dart';
import 'package:better_life/controllers/comments_controller.dart';
import 'package:better_life/core/services/post_service.dart';
import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/math_utils.dart';
import 'package:better_life/core/utils/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helpers/helpers/transition.dart';
import 'package:numeral/numeral.dart';
import 'package:readmore/readmore.dart';
import 'package:remixicon/remixicon.dart';
import 'package:video_player/video_player.dart';

import '../../core/constants/collections.dart';
import '../../core/utils/common.dart';

class HomeTab extends StatefulWidget {
  final String uid;

  const HomeTab({Key? key, required this.uid}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedTab = 0;
  final PageController pageController1 = PageController();

  //Homeka koi controller hai ????
  //ye ocde us ne kia ha ni ha shed ok

  @override
  void dispose() {
    pageController1.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkFollow();

  }

  List following=[];

   checkFollow() async {
    Stream<QuerySnapshot<Object?>> inboxUserStream;
    inboxUserStream = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("following")
        .snapshots();

    inboxUserStream.listen((event) {
      following = event.docs;
    });


  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          StreamBuilder<QuerySnapshot>(
              stream: postsCollection
                  .where("active", isEqualTo: true)
                  .orderBy("posted", descending: true)
                  .snapshots(),
              builder: (context, p1snapshot) {
                if (!p1snapshot.hasData) return customCircularProgress();
                List<DocumentSnapshot> p1data = p1snapshot.data!.docs;
                if (p1snapshot.hasData && p1data.isEmpty) {
                  return Center(child: Text("no post"));
                }
                return PageView.builder(
                    controller: pageController1,
                    itemCount: p1data.length,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return ScrollVideoWidget(
                          uid: widget.uid, doc: p1data[index], index: index,following:following);
                    });
              }),
          Positioned(
            top: 0,
            child: Container(
              width: context.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black54, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SOCIAL",
                      style: fontBody(
                        fontSize: selectedTab == 0 ? 16 : 12,
                        fontWeight: FontWeight.bold,
                        color: selectedTab == 0 ? kPrimaryColor : kWhiteColor,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "NEAR YOU",
                      style: fontBody(
                        fontSize: selectedTab == 1 ? 16 : 12,
                        fontWeight: FontWeight.bold,
                        color: selectedTab == 1 ? kPrimaryColor : kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollVideoWidget extends StatefulWidget {
  final String uid;
  final DocumentSnapshot doc;
  final int index;
  final  following;

  const ScrollVideoWidget({
    Key? key,
    required this.doc,
    required this.uid,
    required this.index,
    required this.following,
  }) : super(key: key);

  @override
  State<ScrollVideoWidget> createState() => _ScrollVideoWidgetState();
}

class _ScrollVideoWidgetState extends State<ScrollVideoWidget> {
  late VideoPlayerController videoPlayerController;
  final TextEditingController commentController = TextEditingController();
  DocumentSnapshot? doc;



  @override
  void initState() {
    super.initState();
    videoPlayerController =
    VideoPlayerController.network(widget.doc["videoURL"])
      ..initialize().then((_) {
        setState(() {});
      })
      ..play()
      ..setVolume(1.0)
      ..setLooping(true);
    print("usama");
  }

  String UserName='';

  getCurrentUser() async {
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection("users")
        .doc(widget.uid)
        .get();

    setState((){
      UserName = (doc.data() as dynamic)["name"] ?? " ";
    });


  }

  checkFollow({required String uid}){
    bool isfollow=false;
    for(int i=0;i<widget.following.length;i++){
      // print("usama");
      print(widget.following[i]["uid"]);
      if(widget.following[i]["uid"]==uid){
        isfollow= true;
        break;
      }else{
        isfollow=false;
        // break;
      }
    }
    return isfollow;

  }




  @override
  void dispose() {
    videoPlayerController.dispose();
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (videoPlayerController.value.isPlaying) {
          videoPlayerController.pause();
        } else {
          videoPlayerController.play();
        }
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          videoPlayerController.value.isInitialized
              ? AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: VideoPlayer(videoPlayerController),
          )
              : Image.network(widget.doc["thumbnail"], fit: BoxFit.contain),
          AnimatedBuilder(
            animation: videoPlayerController,
            builder: (_, __) =>
                OpacityTransition(
                  visible: !videoPlayerController.value.isPlaying,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.play_arrow, color: Colors.black),
                  ),
                ),
          ),
          Positioned(
              bottom: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: context.width,
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            onPressed: () =>
                                PostService.instance.toggleLoves(
                                    pid: widget.doc.id, uid: widget.uid),
                            icon: Icon(
                              widget.doc["loves"].contains(widget.uid)
                                  ? Remix.heart_fill
                                  : Remix.heart_line,
                              color: widget.doc["loves"].contains(widget.uid)
                                  ? kPrimaryColor
                                  : kWhiteColor,
                            ),
                          ),
                        ),
                        AutoSizeText(Numeral(widget.doc["loveCount"]).format(),
                            style: fontBody(fontSize: 12, color: kWhiteColor),
                            maxLines: 1,
                            minFontSize: 10,
                            maxFontSize: 12),
                        if (widget.doc["canComment"])
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                              onPressed: () {
                                Get.find<CommentsController>()
                                    .openCommentsSheet(widget.uid,
                                    widget.doc["owner"], widget.doc.id);
                              },
                              icon: const Icon(
                                Remix.chat_3_line,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        if (widget.doc["canComment"])
                          AutoSizeText(
                              Numeral(widget.doc["commentCount"]).format(),
                              style: fontBody(fontSize: 12, color: kWhiteColor),
                              maxLines: 1,
                              minFontSize: 10,
                              maxFontSize: 12),
                        if (widget.doc["canShare"])
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Remix.share_forward_line,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    width: context.width,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.only(bottom: kToolbarHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StreamBuilder<DocumentSnapshot>(
                            stream: usersCollection
                                .doc(widget.doc["owner"])
                                .snapshots(),
                            builder: (context, uSnapshot) {
                              if (!uSnapshot.hasData) return Container();

                              return Row(
                                children: [
                                  AutoSizeText(
                                    "@${uSnapshot.data!["name"]}",
                                    style: fontBody(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: kWhiteColor),
                                    maxLines: 1,
                                    minFontSize: 10,
                                  ),
                                  SizedBox(width: getHorizontalSize(10)),
                                  if (widget.uid != uSnapshot.data!.id)
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TextButton.icon(
                                        onPressed: () async {
                                          if (checkFollow(uid: uSnapshot.data!["uid"])==false) {
                                          await FirebaseFirestore.instance
                                              .collection("users")
                                              .doc(FirebaseAuth
                                              .instance.currentUser!.uid)
                                              .collection("following")
                                              .doc(uSnapshot.data!["uid"])
                                              .set({
                                            "uid": uSnapshot.data!["uid"],
                                            "email": uSnapshot.data!["email"],
                                            "name": uSnapshot.data!["name"],
                                            "createdOn": DateTime.now(),
                                            "accountCompleted": false,
                                            "surveyCompleted": false,
                                            "profilePicture":
                                            "https://firebasestorage.googleapis.com/v0/b/better-life-dbb22.appspot.com/o/noavatar_male.png?alt=media&token=58b7e7d1-bc14-4b28-bf9d-0a0cb271eee9",
                                          }).whenComplete(() async {
                                            await FirebaseFirestore.instance
                                                .collection("users")
                                                .doc(uSnapshot.data!["uid"])
                                                .collection("followers")
                                                .doc(FirebaseAuth
                                                .instance.currentUser!.uid)
                                                .set({
                                              "uid": FirebaseAuth
                                                  .instance.currentUser!.uid,
                                              "email": FirebaseAuth
                                                  .instance.currentUser!.email,
                                              "name": UserName,
                                              "createdOn": DateTime.now(),
                                              "accountCompleted": false,
                                              "surveyCompleted": false,
                                              "profilePicture":
                                              "https://firebasestorage.googleapis.com/v0/b/better-life-dbb22.appspot.com/o/noavatar_male.png?alt=media&token=58b7e7d1-bc14-4b28-bf9d-0a0cb271eee9",
                                            });
                                          });
                                          _HomeTabState a =  _HomeTabState();
                                          a.checkFollow();
                                          checkFollow(uid: uSnapshot.data!["uid"]);
                                          }
                                          // checkFollow();
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                          Colors.grey.withOpacity(0.1),
                                          primary: kPrimaryColor,
                                          shape: StadiumBorder(),
                                        ),
                                        icon: Icon(
                                            checkFollow(uid: uSnapshot.data!["uid"])
                                                ? Icons.done
                                                : Icons.add,
                                            size: 15),
                                        label: Text(
                                            checkFollow(uid: uSnapshot.data!["uid"])
                                                ? "Followed"
                                                : "Follow",
                                            style: fontBody(
                                                fontSize: 10,
                                                color: kPrimaryColor)),
                                      ),
                                    ),
                                ],
                              );
                            }),
                        SizedBox(height: getVerticalSize(10)),
                        ReadMoreText(
                          widget.doc["caption"],
                          trimLines: 2,
                          style: fontBody(fontSize: 12, color: kWhiteColor),
                          colorClickableText: kPrimaryColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'more',
                          trimExpandedText: 'less',
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
