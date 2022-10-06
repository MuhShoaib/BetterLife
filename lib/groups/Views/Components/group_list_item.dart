import 'package:better_life/core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ViewModel/group_view_model.dart';

class GroupListItem extends StatefulWidget {
  final int index;

  const GroupListItem({super.key, required this.index});
  @override
  State<GroupListItem> createState() => _GroupListItemState();
}

class _GroupListItemState extends State<GroupListItem> {
  GroupViewModel gVM = Get.put(GroupViewModel());

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff2B3238),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            gVM.showgroupsList[widget.index].groupName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Container(
            // height: 95,
            width: size.width - 20,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      child: ClipOval(
                        child: Image.network(
                          "https://images.unsplash.com/photo-1664447993750-bc1447893d4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "${gVM.showgroupsList[widget.index].createdAt}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // SizedBox(width: 10),
                    Row(
                      children: List.generate(
                        5,
                        growable: false,
                        (index) => Container(
                          height: 30,
                          width: 30,
                          // margin:
                          //     EdgeInsets.only(left: double.parse("${index+20}")),
                          child: ClipOval(
                            child: Image.network(
                              "https://images.unsplash.com/photo-1664447993750-bc1447893d4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    // Text("LastMassage")
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Time",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
