import 'dart:io';
import 'package:better_life/core/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remixicon/remixicon.dart';

import '../../core/utils/color_constant.dart';
import 'edit_record.dart';

class VideoRecorder extends StatefulWidget with WidgetsBindingObserver {
  final String uid;
  final List<CameraDescription> cameras;
  const VideoRecorder({Key? key, required this.uid, required this.cameras}) : super(key: key);

  @override
  State<VideoRecorder> createState() => _VideoRecorderState();
}

class _VideoRecorderState extends State<VideoRecorder> {
  CameraController? cameraController;
  bool enableAudio = true;
  final ImagePicker imagePicker = ImagePicker();

  @override
  void initState() {
    cameraController = CameraController(widget.cameras[1], ResolutionPreset.max, enableAudio: enableAudio);
    cameraController!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    super.initState();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!cameraController!.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      cameraController!.dispose();
      Get.back();
    } else if (state == AppLifecycleState.resumed) {
      if (cameraController != null) {
        //onNewCameraSelected(cameraController!.description);
      }
    }
  }

  @override
  void dispose() {
    cameraController!.dispose();
    super.dispose();
  }

  void pickVideoGallery() async {
    final XFile? video = await imagePicker.pickVideo(source: ImageSource.gallery);
    if (video == null) {
      customToast("No video picked from gallery");
      return;
    }
    Get.off(() => EditRecord(uid: widget.uid, videoFile: File(video.path)));
    //Get.off(() => UploadRecord(uid: widget.uid, videoPath: video.path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Remix.close_line)),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Remix.camera_switch_fill),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: !cameraController!.value.isInitialized
          ? Container()
          : SizedBox(
              width: Get.width,
              height: Get.height,
              child: CameraPreview(
                cameraController!,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Remix.emotion_fill, size: 40),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration:
                                      const ShapeDecoration(color: Colors.red, shape: CircleBorder(side: BorderSide(color: Colors.grey, width: 5))),
                                ),
                              ),
                              IconButton(
                                onPressed: pickVideoGallery,
                                icon: const Icon(Remix.gallery_fill, size: 40),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
