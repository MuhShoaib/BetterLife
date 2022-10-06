import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/image_constant.dart';
import '../utils/math_utils.dart';

class AppBarWithBack extends StatelessWidget {
  const AppBarWithBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.only(
        top: getVerticalSize(
          10.00,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            30.00,
          ),
          right: getHorizontalSize(
            24.00,
          ),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: getVerticalSize(
                24.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/arr.svg",
                  //ImageConstant.imgFrame262,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 100,),
            Container(
              height: getVerticalSize(
                40.00,
              ),
              width: getHorizontalSize(
                40.00,
              ),
              child: SvgPicture.asset(
                "assets/images/log.svg",
                // ImageConstant.imgGroup,
                fit: BoxFit.fill,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
