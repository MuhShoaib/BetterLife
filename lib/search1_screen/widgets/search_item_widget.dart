import 'package:better_life/core/utils/color_constant.dart';
import 'package:get/get.dart';

import '../../core/utils/math_utils.dart';
import '../../social_profile_screen/models/social_profile_model.dart';
import '../controller/search1_controller.dart';
import '../models/search_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatefulWidget {
  SearchItemWidget(this.itemData, {this.onTapBtnFollowing});

  final SocialProfileModel itemData;

  VoidCallback? onTapBtnFollowing;

  @override
  State<SearchItemWidget> createState() => _SearchItemWidgetState();
}

class _SearchItemWidgetState extends State<SearchItemWidget> {
  var controller = Get.find<Search1Controller>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getVerticalSize(
          5.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  5.00,
                ),
                right: getHorizontalSize(
                  5.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          widget.itemData.image,
                          height: getSize(
                            35.00,
                          ),
                          width: getSize(
                            35.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            11.00,
                          ),
                        ),
                        child: Text(
                          "${widget.itemData.name}\n${widget.itemData.email}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white),
                          // style: AppStyle.textStyleIntermedium10.copyWith(
                          //   fontSize: getFontSize(
                          //     13,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        5.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    child:  GestureDetector(
                          onTap: () {
                            // onTapBtnFollowing!();
                            controller.followUser(
                              user: SocialProfileModel(
                                name: widget.itemData.name,
                                email: widget.itemData.email,
                                uid: widget.itemData.uid,
                                image: widget.itemData.image,
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              25.00,
                            ),
                            width: getHorizontalSize(
                              75.00,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(
                                getSize(30),
                              ),
                            ),
                            child: Text(
                              controller.followed.value ? "Follow" : "Follow",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                              // style: AppStyle.textStyleIntermedium102.copyWith(
                              //   color: Colors.black,
                              //   fontSize: getFontSize(
                              //     10,
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
