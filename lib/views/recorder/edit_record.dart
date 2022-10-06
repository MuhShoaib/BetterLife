import 'dart:io';
import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/common.dart';
import 'package:better_life/core/utils/styles.dart';
import 'package:get/get.dart';
import 'package:helpers/helpers.dart' show OpacityTransition;
import 'package:flutter/material.dart';
import 'package:video_editor/video_editor.dart';

import 'upload_record.dart';


class EditRecord extends StatefulWidget {
  final String uid;
  final File videoFile;
  const EditRecord({Key? key, required this.uid, required this.videoFile}) : super(key: key);

  @override
  State<EditRecord> createState() => _EditRecordState();
}

class _EditRecordState extends State<EditRecord> {
  final _exportingProgress = ValueNotifier<double>(0.0);
  final _isExporting = ValueNotifier<bool>(false);
  final double height = 60;

  bool _exported = false;
  late VideoEditorController _controller;

  @override
  void initState() {
    _controller = VideoEditorController.file(widget.videoFile, maxDuration: const Duration(seconds: 60))..initialize().then((_) => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _exportingProgress.dispose();
    _isExporting.dispose();
    _controller.dispose();
    super.dispose();
  }

  void exportVideo() async {
    _exportingProgress.value = 0;
    _isExporting.value = true;
    await _controller.exportVideo(
      onProgress: (stats, value) {
        _exportingProgress.value = value;
        if (!Get.isDialogOpen!) {
          Get.defaultDialog(
            titleStyle: fontBody(color: kWhiteColor),
            title: "Exporting...",
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ValueListenableBuilder(
                  valueListenable: _exportingProgress,
                  builder: (_, double value, __) => Text("${(value * 100).ceil()}%", style: fontBody(color: kWhiteColor)),
                ),
              ],
            ),
            backgroundColor: kBackgroundColor,
            barrierDismissible: false,
          );
        }
      },
      onCompleted: (file) {
        if (!mounted) return;
        Get.back();
        if (file != null) {
          Get.off(() => UploadRecord(uid: widget.uid, videoPath: file.path));
        } else {
          customToast("Some error occurred");
        }

        setState(() => _exported = true);
        Future.delayed(const Duration(seconds: 2), () => setState(() => _exported = false));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Wrap(
          children: [
            IconButton(
              onPressed: () => _controller.rotate90Degrees(RotateDirection.left),
              tooltip: "Rotate left",
              icon: const Icon(Icons.rotate_left),
            ),
            IconButton(
              onPressed: () => _controller.rotate90Degrees(RotateDirection.right),
              tooltip: "Rotate right",
              icon: const Icon(Icons.rotate_right),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () => exportVideo(),
              style: TextButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.2)),
              child: Text("Next", style: fontBody(fontSize: 15)),
            ),
          ),
        ],
      ),
      body: _controller.initialized
          ? Stack(children: [
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(children: [
                    Expanded(
                        child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Stack(alignment: Alignment.center, children: [
                          CropGridViewer(
                            controller: _controller,
                            showGrid: false,
                          ),
                          AnimatedBuilder(
                            animation: _controller.video,
                            builder: (_, __) => OpacityTransition(
                              visible: !_controller.isPlaying,
                              child: GestureDetector(
                                onTap: _controller.video.play,
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
                          ),
                        ]),
                        CoverViewer(controller: _controller)
                      ],
                    )),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _trimSlider(),
                      ),
                    ),
                  ]),
                ),
              ),
            ])
          : customCircularProgress(),
    );
  }

  String formatter(Duration duration) =>
      [duration.inMinutes.remainder(60).toString().padLeft(2, '0'), duration.inSeconds.remainder(60).toString().padLeft(2, '0')].join(":");

  List<Widget> _trimSlider() {
    return [
      AnimatedBuilder(
        animation: _controller.video,
        builder: (_, __) {
          final duration = _controller.video.value.duration.inSeconds;
          final pos = _controller.trimPosition * duration;
          final start = _controller.minTrim * duration;
          final end = _controller.maxTrim * duration;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: height / 4),
            child: Row(children: [
              Text(formatter(Duration(seconds: pos.toInt())), style: fontBody(color: kWhiteColor)),
              const Expanded(child: SizedBox()),
              OpacityTransition(
                visible: _controller.isTrimming,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(formatter(Duration(seconds: start.toInt())), style: fontBody(color: kWhiteColor)),
                  const SizedBox(width: 10),
                  Text(formatter(Duration(seconds: end.toInt())), style: fontBody(color: kWhiteColor)),
                ]),
              )
            ]),
          );
        },
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: height / 4),
        child: TrimSlider(
            child: TrimTimeline(controller: _controller, margin: const EdgeInsets.only(top: 10)),
            controller: _controller,
            height: height,
            horizontalMargin: height / 4),
      )
    ];
  }
}
