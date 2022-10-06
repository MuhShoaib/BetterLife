import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../controller/home4_controller.dart';
import '../models/home3_item_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Home3ItemWidget extends StatelessWidget {
  Home3ItemWidget(this.home3ItemModelObj, {this.onTapGroup});

  Home3ItemModel home3ItemModelObj;

  var controller = Get.find<Home4Controller>();

  VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapGroup!();
        },
        child: Container(
          margin: EdgeInsets.only(
            top: getVerticalSize(
              10.00,
            ),
            bottom: getVerticalSize(
              10.00,
            ),
          ),
          decoration: BoxDecoration(

            //color: ColorConstant.whiteA70019,
            color: Colors.blueGrey.shade900,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    8.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  bottom: getVerticalSize(
                    7.00,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: getSize(
                        50.00,
                      ),
                      width: getSize(
                        50.00,
                      ),
                      child: SvgPicture.asset(
                        home3ItemModelObj.icon,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          10.00,
                        ),
                        top: getVerticalSize(
                          16.00,
                        ),
                        bottom: getVerticalSize(
                          19.00,
                        ),
                      ),
                      child: Text(
                        home3ItemModelObj.title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                        // style: AppStyle.textStyleIntermedium12.copyWith(
                        //   fontSize: getFontSize(
                        //     12,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    23.00,
                  ),
                  right: getHorizontalSize(
                    16.00,
                  ),
                  bottom: getVerticalSize(
                    22.00,
                  ),
                ),
                child: Container(
                  height: getVerticalSize(
                    20.00,
                  ),
                  width: getHorizontalSize(
                    10.00,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/Vector23.svg",
                    //ImageConstant.imgVector23,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
