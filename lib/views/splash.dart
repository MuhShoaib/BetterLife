import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/math_utils.dart';
import '../social_profile_message_screen/controller/social_profile_message_controller.dart';

class Splash extends GetView<SplashController> {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: getVerticalSize(180.00),
          child: Image.asset("assets/images/logo.png", fit: BoxFit.fill),
        ),
      ),
    );
  }
}

