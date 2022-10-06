import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ViewModel/group_view_model.dart';
import 'Components/group_list_item.dart';
import 'create_group_view.dart';

class GroupsListView extends StatefulWidget {
  const GroupsListView({Key? key}) : super(key: key);

  @override
  State<GroupsListView> createState() => _GroupsListViewState();
}

class _GroupsListViewState extends State<GroupsListView> {
  GroupViewModel gVM = Get.put(GroupViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gVM.showGroups();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Groups"),
            IconButton(
              onPressed: () {
                Get.to(CreateGroups());
              },
              icon: Icon(
                Icons.edit,
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => ListView.builder(
        itemCount: gVM.showgroupsList.value.length,
        itemBuilder: (context, index) {
          return GroupListItem(index: index,);
        },
      )),
    );
  }
}
