// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';

class AddSocialScreen extends StatelessWidget {
  const AddSocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(ImageConstant.imgUnsplashkodmxe)),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/photos.png'),
                Image.asset(
                  'assets/icons/Capture.png',
                ),
                Image.asset('assets/icons/Videos.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
