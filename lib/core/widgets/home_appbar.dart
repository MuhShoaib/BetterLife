import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/image_constant.dart';
import '../utils/math_utils.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getVerticalSize(62),
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.only(
            left: getHorizontalSize(30.00), right: getHorizontalSize(26.00)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  height: getVerticalSize(20.00),
                  width: getHorizontalSize(20.00),
                  //child: SvgPicture.asset(ImageConstant.imgFrame2622, fit: BoxFit.fill)),
                  child: SvgPicture.asset("assets/images/back.svg", fit: BoxFit.fill)),
              Container(
                  height: getVerticalSize(40.00),
                  width: getHorizontalSize(40.00),
                  child: SvgPicture.asset("assets/images/better.svg", fit: BoxFit.fill)),
                  //child: SvgPicture.asset(ImageConstant.imgGroup5, fit: BoxFit.fill)),
              ClipRRect(
                borderRadius: BorderRadius.circular(getSize(12.87)),
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Image.asset(ImageConstant.imgElipse,
                      height: getVerticalSize(35.00),
                      width: getHorizontalSize(35.00),
                      fit: BoxFit.fill),
                ),
              ),
            ]),
      ),
    );
  }
}
