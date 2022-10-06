import 'dart:io';
import 'package:better_life/core/utils/common.dart';
import 'package:better_life/core/utils/styles.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:video_editor/video_editor.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../core/constants/collections.dart';
import '../../core/services/user_service.dart';
import '../../core/utils/color_constant.dart';

class UploadRecord extends StatefulWidget {
  final String uid, videoPath;
  const UploadRecord({Key? key, required this.uid, required this.videoPath}) : super(key: key);

  @override
  State<UploadRecord> createState() => _UploadRecordState();
}

class _UploadRecordState extends State<UploadRecord> {
  final TextEditingController captionController = TextEditingController();
  late VideoEditorController _controller;
  int captionLength = 0;
  List<String> selectedCategories = [];
  String? thumbnailPath;
  bool allowComments = true, canShare = true, isPrivate = false;
  @override
  void initState() {
    _controller = VideoEditorController.file(File(widget.videoPath), maxDuration: const Duration(seconds: 60))
      ..initialize().then((_) => setState(() {}));
    generateThumbnail();
    super.initState();
  }

  generateThumbnail() async {
    thumbnailPath = await VideoThumbnail.thumbnailFile(
      video: widget.videoPath,
      thumbnailPath: (await getTemporaryDirectory()).path,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 480,
      quality: 60,
    );
    setState(() {});
  }

  @override
  void dispose() {
    captionController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Post"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: captionController,
                  style: fontBody(color: kWhiteColor, fontSize: 12),
                  maxLines: 5,
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    if (captionLength > 100) {
                      customToast("Maximum 100 characters for caption");
                      return;
                    }
                    setState(() {
                      captionLength = value.length;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Type here...",
                    counterText: "$captionLength/100",
                    hintStyle: fontBody(color: kWhiteColor, fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                color: Colors.grey.withOpacity(0.2),
                child: thumbnailPath == null ? const SizedBox() : Image.file(File(thumbnailPath!), width: 100, height: 150, fit: BoxFit.fitWidth),
              ),
            ],
          ),
          Divider(color: kWhiteColor.withOpacity(0.5)),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Remix.eye_off_line, color: kWhiteColor, size: 18),
            minLeadingWidth: 0,
            title: Text("Who can watch this video", style: fontBody(fontSize: 12, color: kWhiteColor)),
            trailing: TextButton.icon(
              onPressed: () {
                setState(() {
                  isPrivate = !isPrivate;
                });
              },
              icon: Text(isPrivate ? "Private" : "Everyone", style: fontBody(fontSize: 12, color: kWhiteColor)),
              label: Icon(Icons.arrow_forward_ios, size: 15, color: kWhiteColor),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Remix.message_2_line, color: kWhiteColor, size: 18),
            minLeadingWidth: 0,
            title: Text("Allow comments", style: fontBody(fontSize: 12, color: kWhiteColor)),
            trailing: SizedBox(
              width: 40,
              child: FlutterSwitch(
                height: 20,
                toggleSize: 10,
                width: 40,
                value: allowComments,
                borderRadius: 30.0,
                padding: 5.0,
                activeColor: kPrimaryColor,
                showOnOff: false,
                onToggle: (val) {
                  setState(() {
                    allowComments = val;
                  });
                },
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Remix.share_line, color: kWhiteColor, size: 18),
            minLeadingWidth: 0,
            title: Text("Prevent sharing", style: fontBody(fontSize: 12, color: kWhiteColor)),
            trailing: SizedBox(
              width: 40,
              child: FlutterSwitch(
                height: 20,
                toggleSize: 10,
                width: 40,
                value: !canShare,
                borderRadius: 30.0,
                padding: 5.0,
                activeColor: kPrimaryColor,
                showOnOff: false,
                onToggle: (val) {
                  setState(() {
                    canShare = val;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text("Category", style: fontBody(fontSize: 16, color: kWhiteColor, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          FutureBuilder<QuerySnapshot>(
              future: categoriesCollection.orderBy("name").get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return Container();
                List<DocumentSnapshot> categories = snapshot.data!.docs;
                return Wrap(
                  spacing: 10,
                  children: List.generate(
                    categories.length,
                    (index) {
                      String name = categories[index]["name"];
                      return GestureDetector(
                        onTap: () {
                          if (selectedCategories.contains(name)) {
                            selectedCategories.remove(name);
                          } else {
                            selectedCategories.add(name);
                          }
                          setState(() {});
                        },
                        child: selectedCategories.contains(name)
                            ? Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Chip(
                                    label: Text(
                                      name,
                                      style: fontBody(color: kWhiteColor),
                                    ),
                                    backgroundColor: kPrimaryColor,
                                    shape: StadiumBorder(side: BorderSide(color: kPrimaryColor, width: 1)),
                                  ),
                                  Icon(Remix.close_circle_fill, color: kWhiteColor, size: 15)
                                ],
                              )
                            : Chip(
                                label: Text(
                                  name,
                                  style: fontBody(color: kWhiteColor),
                                ),
                                backgroundColor: Colors.black,
                                shape: StadiumBorder(side: BorderSide(color: kWhiteColor, width: 1)),
                              ),
                      );
                    },
                  ),
                );
              }),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () async {
              UserService.instance.createPost(
                uid: widget.uid,
                categories: selectedCategories,
                canComment: allowComments,
                canShare: canShare,
                isPrivate: isPrivate,
                videoPath: widget.videoPath,
                caption: captionController.text.trim(),
                thumbnail: thumbnailPath!,
              );
            },
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                primary: kWhiteColor,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            child: Text("Post Now", style: fontBody(fontSize: 15)),
          ),
        ),
      ),
    );
  }
}
