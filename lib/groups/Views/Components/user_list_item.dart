import 'package:better_life/core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../social_profile_screen/models/social_profile_model.dart';
import '../../ViewModel/group_view_model.dart';

class UserListItem extends StatefulWidget {
  final SocialProfileModel itemData;
  final int index;

  const UserListItem({
    super.key,
    required this.itemData,
    required this.index,
  });

  @override
  State<UserListItem> createState() => _UserListItemState();
}

class _UserListItemState extends State<UserListItem> {
  bool isChecked = false;
  // List<SocialProfileModel> groupList = <SocialProfileModel>[];

  GroupViewModel gVM = Get.put(GroupViewModel());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(gVM.groupList.value.length);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    gVM.groupList.value.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
              for (int i = 0; i <= widget.index; i++) {
                if (isChecked == true) {
                  gVM.groupList.value.insert(i, widget.itemData);
                  print(gVM.groupList.value[i].name);
                  print(gVM.groupList.value.length);
                  break;
                  // groupList.add(widget.itemData);
                } else {
                  gVM.groupList.value.remove(widget.itemData);
                  print(gVM.groupList.value.length);
                  break;
                }
                print(isChecked);
                // print(groupList[0].name);
              }
            });
          },
          child: Container(
            // height: 50,
            width: size.width,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          child: ClipOval(
                            child: Image.network(
                              gVM.userList.value[widget.index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          gVM.userList.value[widget.index].name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Checkbox(
                      value: isChecked,
                      side: BorderSide(color: Colors.white),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                          for (int i = 0; i <= widget.index; i++) {
                            if (isChecked == true) {
                              gVM.groupList.value.insert(i, widget.itemData);
                              print(gVM.groupList.value[i].name);
                              // groupList.add(widget.itemData);
                            } else {
                              gVM.groupList.value.removeAt(i);
                            }
                            print(isChecked);
                            print(gVM.groupList.value.length);
                            // print(groupList[0].name);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade600,
                )
              ],
            ),
          ),
        ));
  }
}
