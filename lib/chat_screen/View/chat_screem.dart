import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../social_profile_screen/models/social_profile_model.dart';
import '../Model/chat_model.dart';
import 'Components/chat_item_view.dart';
import 'Components/chat_text_input_field_view.dart';

class ChatScreeen extends StatefulWidget {
 final SocialProfileModel socialProfileModel;

  const ChatScreeen({
    super.key,
    required this.socialProfileModel,
  });

  @override
  State<ChatScreeen> createState() => _ChatScreeenState();
}

class _ChatScreeenState extends State<ChatScreeen> {
  TextEditingController msg = TextEditingController();
  String? currentUserEmail;
  String? currentUserName;
  List<ChatModel> chat = <ChatModel>[];
  Stream<QuerySnapshot<Object?>>? chatStream;
  bool isnotEmpty = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser().then((value) {
      setState(() {
        currentUserEmail = value;
      });
      chatStream = FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("inbox")
          .doc(widget.socialProfileModel.uid)
          .collection("chat")
          .orderBy("time", descending: true)
          .snapshots();
    });
  }

  Future<String?> getUser() async {
    return await FirebaseAuth.instance.currentUser!.email;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(widget.socialProfileModel.image), fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Text(widget.socialProfileModel.name),
          ],
        ),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: chatStream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      chat = ChatModel.JsonToListView(snapshot.data!.docs);
                    } else {
                      return Center(
                        child: Text("No Chat Found"),
                      );
                    }
                    return ListView.builder(
                        reverse: true,
                        itemCount: chat.length,
                        itemBuilder: (context, index) => ChatItemView(
                                chatModel: ChatModel(
                              name: chat[index].name,
                              time: chat[index].time,
                              message: chat[index].message,
                              email: chat[index].email,
                              isme: chat[index].isme,
                            )));
                  }),
            ),
            ChatTextInputFieldView(
              controler: msg,
              backColor: Colors.grey.withAlpha(55),
              sendIcon: isnotEmpty ? Icons.send : Icons.cancel_schedule_send,
              hintText: "Type here...",
              onChanged: (value) {
                setState(() {
                  if (value.trim().isNotEmpty) {
                    isnotEmpty = true;
                  } else {
                    isnotEmpty = false;
                  }
                });
              },
              onSendPressed: () async {
                DocumentSnapshot documentSnapshot = await FirebaseFirestore
                    .instance
                    .collection("users")
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .get();
                currentUserName =
                    (documentSnapshot.data() as dynamic)["name"] ?? "";

                String currentUserimage =
                    (documentSnapshot.data() as dynamic)["profilePicture"] ??
                        "";
                if (isnotEmpty == true) {
                  String message = msg.text.toString();
                  setState(() {
                    msg.text = "";
                    isnotEmpty = false;
                  });
                  await FirebaseFirestore.instance
                      .collection("users")
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection("inbox")
                      .doc(widget.socialProfileModel.uid)
                      .set({
                    "email": widget.socialProfileModel.email,
                    "name": widget.socialProfileModel.name,
                    "image": widget.socialProfileModel.image,
                    "uid": widget.socialProfileModel.uid,
                  });

                  await FirebaseFirestore.instance
                      .collection("users")
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection("inbox")
                      .doc("${widget.socialProfileModel.uid}")
                      .collection("chat")
                      .doc()
                      .set({
                    "msg": message,
                    "time": DateTime.now().microsecondsSinceEpoch,
                    "IsMe": true
                  });

                  /////////////////////////////

                  await FirebaseFirestore.instance
                      .collection("users")
                      .doc("${widget.socialProfileModel.uid}")
                      .collection("inbox")
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .set({
                    "name": currentUserName,
                    "email": currentUserEmail,
                    "image": currentUserimage,
                    "uid": FirebaseAuth.instance.currentUser!.uid,
                  });

                  await FirebaseFirestore.instance
                      .collection("users")
                      .doc("${widget.socialProfileModel.uid}")
                      .collection("inbox")
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection("chat")
                      .doc()
                      .set({
                    "msg": message,
                    "time": DateTime.now().microsecondsSinceEpoch,
                    "IsMe": false
                  });
                  // _sendAndRetrieveMessage(
                  //     msg: message,
                  //     tokin: widget.userModel.FCMToken,
                  //     username: currentUserName!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
