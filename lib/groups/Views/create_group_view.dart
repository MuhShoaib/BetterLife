import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/math_utils.dart';
import '../../social_profile_screen/models/social_profile_model.dart';
import '../ViewModel/group_view_model.dart';
import 'Components/user_list_item.dart';

class CreateGroups extends StatefulWidget {
  const CreateGroups({Key? key}) : super(key: key);

  @override
  State<CreateGroups> createState() => _CreateGroupsState();
}

class _CreateGroupsState extends State<CreateGroups> {
  TextEditingController search = TextEditingController();
  TextEditingController groupNmae = TextEditingController();

  // List<SocialProfileModel> userList = <SocialProfileModel>[];
  GroupViewModel gVM = Get.put(GroupViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gVM.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: TextFormField(
            controller: search,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1)),
              isDense: true,
              contentPadding: EdgeInsets.only(
                  top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
            // style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
            // validator: passwordValidator,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: TextFormField(
                  controller: groupNmae,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Enter Group Name",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                        top: getVerticalSize(1.03),
                        bottom: getVerticalSize(6.03)),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  // style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                  // validator: passwordValidator,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                // padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: gVM.userList.value.length,
                  itemBuilder: (context, index) {
                    return UserListItem(
                      index: index,
                      itemData: SocialProfileModel(
                        name: gVM.userList.value[index].name,
                        email: gVM.userList.value[index].email,
                        uid: gVM.userList.value[index].uid,
                        image: gVM.userList.value[index].image,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton:
            // gVM.groupList.value.length!=0 ?
            FloatingActionButton(
          onPressed: () {
            gVM.createGroup(
              time: DateTime.now().microsecondsSinceEpoch,
              gropName: groupNmae.text,
              createdBy: FirebaseAuth.instance.currentUser!.uid,
              members: gVM.groupList.value,
            );
          },
          child: Icon(
            Icons.done,
          ),
        )
        // :SizedBox(),
        ));
  }
}
