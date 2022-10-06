import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../core/constants/collections.dart';
import '../core/utils/common.dart';
import '../views/tabs/home_tab.dart';

class VideoScreen extends StatefulWidget {
  final String uid;

  const VideoScreen({super.key, required this.uid});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: postsCollection
              .where("active", isEqualTo: true)
              .orderBy("posted", descending: true)
              .snapshots(),
          builder: (context, p1snapshot) {
            if (!p1snapshot.hasData) return customCircularProgress();
            List<DocumentSnapshot> p1data = p1snapshot.data!.docs.where((element) => element["owner"]==widget.uid).toList();
            if (p1snapshot.hasData && p1data.isEmpty) {
              return Center(child: Text("no post"));
            }
            return PageView.builder(
                controller: pageController1,
                itemCount: p1data.length,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ScrollVideoWidget(uid: FirebaseAuth.instance.currentUser!.uid, doc: p1data[index],index: index,following: [],);
                });
          }),
    );
  }
}
