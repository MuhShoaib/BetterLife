import 'package:better_life/core/utils/form_validators.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../controllers/login_controller.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../core/utils/styles.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  "Sign in to Continue",
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
                          "Email",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        SizedBox(height: getVerticalSize(10)),
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
                          validator: emailValidator,
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: getVerticalSize(20.00)),
                        Text(
                          "Password",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: fontBody(fontSize: 14, color: kWhiteColor),
                        ),
                        SizedBox(height: getVerticalSize(10)),
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
                          validator: passwordValidator,
                          style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: getVerticalSize(30.00)),
                        ElevatedButton(
                          onPressed: ()=>controller.emailLogin(),
                          style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(vertical: 20)),
                          child: Text("Sign in", style: fontBody(fontSize: 14)),
                        ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: getVerticalSize(30.00)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            height: getVerticalSize(1.00),
                            decoration: BoxDecoration(color: kWhiteColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "Or",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: fontBody(fontSize: 14, color: kWhiteColor),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: getVerticalSize(1.00),
                            decoration: BoxDecoration(color: kWhiteColor),
                          ),
                        )
                      ]),
                ),
                ListTile(
                  tileColor: Colors.white10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  leading: Container(
                    height: getSize(25.00),
                    width: getSize(25.00),
                    child: SvgPicture.asset(ImageConstant.imgGroup97, fit: BoxFit.contain),
                  ),
                  title: Text(
                    "Continue with Google",
                    style: fontBody(fontSize: 14, fontWeight: FontWeight.w500, color: kWhiteColor),
                  ),
                ),
                SizedBox(height: getVerticalSize(20.00)),
                ListTile(
                  tileColor: Colors.white10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  leading: Container(
                    height: getSize(25.00),
                    width: getSize(25.00),
                    child: SvgPicture.asset(ImageConstant.imgGroup98, fit: BoxFit.contain),
                  ),
                  title: Text(
                    "Continue with Facebook",
                    style: fontBody(fontSize: 14, fontWeight: FontWeight.w500, color: kWhiteColor),
                  ),
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
                TextSpan(text: "Don't have an account? ", style: fontBody(color: kWhiteColor, fontSize: getFontSize(14), fontWeight: FontWeight.w400)),
                TextSpan(text: "Sign up", recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed("/signup"), style: fontBody(color: kWhiteColor, fontSize: getFontSize(14), fontWeight: FontWeight.w500))
              ]),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
