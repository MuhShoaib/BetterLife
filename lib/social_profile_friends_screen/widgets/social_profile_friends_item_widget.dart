import 'package:better_life/chat_screen/View/chat_screem.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../social_profile_screen/models/social_profile_model.dart';
import '../controller/social_profile_friends_controller.dart';
import '../models/social_profile_friends_item_model.dart';

// import 'package:better_life/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SocialProfileFriendsItemWidget extends StatefulWidget {
  final index;
  final itemData;

  SocialProfileFriendsItemWidget({
    super.key,
    required this.index,
    required this.itemData,
  });

  @override
  State<SocialProfileFriendsItemWidget> createState() => _SocialProfileFriendsItemWidgetState();
}

class _SocialProfileFriendsItemWidgetState extends State<SocialProfileFriendsItemWidget> {
  var controller = Get.put(SocialProfileFriendsController());
  VoidCallback? onTapBtnFollowing;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(
                  getSize(
                    5.00,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    5.00,
                  ),
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
                                  borderRadius: BorderRadius.circular(
                                    getSize(
                                      17.50,
                                    ),
                                  ),
                                  child: Image.network(
                                   // "https://images.unsplash.com/photo-1657299156725-dc862fea3e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                   //  widget.itemData.image,
                                    controller.userList.value[widget.index].image,
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
                                    // "${widget.itemData.name}".tr,
                                    "${controller.userList.value[widget.index].name}".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.white),
                                    // style: AppStyle.textStyleIntermedium10.copyWith(
                                    //   color: Colors.black,
                                    //   fontSize: getFontSize(
                                    //     14,
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
                                    onTap:
                                    // controller.msg.value
                                    //     ?
                                        () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChatScreeen(
                                                          socialProfileModel:
                                                              SocialProfileModel(
                                                    name: controller.userList.value[widget.index].name,
                                                    email: controller.userList.value[widget.index].email,
                                                    uid: controller.userList.value[widget.index].uid,
                                                    image: controller.userList.value[widget.index].image,
                                                  )),
                                                ));
                                          },
                                        // : null,
                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.green)),
                                      child: Center(
                                        child: Text(
                                          "Message",
                                          // controller.msg.value
                                          //     ? "Message"
                                          //     : controller.followBack.value==true
                                          //         ? "Follow Back"
                                          //         : "Following",
                                          style: TextStyle(color: Colors.white),
                                        ),
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
              ),
            ),
            Divider(
              height: getVerticalSize(
                1.00,
              ),
              color: Colors.grey,
            ),
          ],
        ));
  }
}
