import 'package:better_life/controllers/signup_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/form_validators.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../core/utils/styles.dart';

class Signup extends GetView<SignupController> {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              children: [
                Center(
                  child: SizedBox(
                    height: getVerticalSize(50.00),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                SizedBox(height: getVerticalSize(20.00)),
                Text(
                  "Welcome",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: fontBody(fontSize: 24, fontWeight: FontWeight.w500, color: kPrimaryColor),
                ),
                SizedBox(height: getVerticalSize(10.00)),
                Text(
                  "Sign up to Continue",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: fontBody(fontSize: 18, fontWeight: FontWeight.w500, color: kWhiteColor),
                ),
                SizedBox(height: getVerticalSize(30.00)),
                Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        TextFormField(
                          controller: controller.nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "example: Rousticx",
                            hintStyle: fontBody(fontSize: getFontSize(12.0), color: kBlueGreyColor),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
                          ),
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                          validator: nameValidator,
                        ),
                        SizedBox(height: getVerticalSize(20.00)),
                        Text(
                          "Email",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        TextFormField(
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "example:pradeepta@shaderbytes.com",
                            hintStyle: fontBody(fontSize: getFontSize(12.0), color: kBlueGreyColor),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
                          ),
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                          validator: emailValidator,
                        ),
                        SizedBox(height: getVerticalSize(20.00)),
                        Text(
                          "Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        TextFormField(
                          controller: controller.passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "********",
                            hintStyle: fontBody(fontSize: getFontSize(12.0), color: kBlueGreyColor),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
                          ),
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                          validator: passwordValidator,
                        ),
                        SizedBox(height: getVerticalSize(20.00)),
                        Text(
                          "Confirm Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        TextFormField(
                          controller: controller.confirmPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "********",
                            hintStyle: fontBody(fontSize: getFontSize(12.0), color: kBlueGreyColor),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
                          ),
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                          validator: (value) {
                            if (value!.isEmpty)
                              return "Please re-enter your password";
                            else if (controller.confirmPasswordController.text != controller.passwordController.text)
                              return "Passwords does not match";
                            return null;
                          },
                        ),
                        SizedBox(height: getVerticalSize(30.00)),
                        ElevatedButton(
                          onPressed: () => controller.emailSignup(),
                          style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(vertical: 20)),
                          child: Text("Sign up", style: fontBody(fontSize: 14)),
                        )
                      ]),
                ),
              ],
            ),
          ),
          Container(
            width: context.width,
            padding: EdgeInsets.symmetric(vertical: getVerticalSize(20.00)),
            color: kBackgroundColor,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Already have an account? ", style: fontBody(color: kWhiteColor, fontSize: getFontSize(14), fontWeight: FontWeight.w400)),
                TextSpan(
                    text: "Sign in",
                    recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                    style: fontBody(color: kWhiteColor, fontSize: getFontSize(14), fontWeight: FontWeight.w500))
              ]),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
