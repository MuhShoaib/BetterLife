import 'package:better_life/search1_screen/search1_screen.dart';
import 'package:better_life/search1_screen/tocpics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../core/utils/math_utils.dart';
import 'controller/search1_controller.dart';

class SearchTabRoot extends StatefulWidget {
  const SearchTabRoot({Key? key}) : super(key: key);

  @override
  State<SearchTabRoot> createState() => _SearchTabRootState();
}

class _SearchTabRootState extends State<SearchTabRoot>
    with TickerProviderStateMixin {
  TabController? tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    tabcontroller = TabController(length: 2, vsync: this);
  }

  Search1Controller controller = Get.put(Search1Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: TextView(text: "GPS World Satellite Map"),
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                  height: getVerticalSize(20.00),
                  width: size.width-150,
                  child: TextFormField(
                      controller: controller.group56Controller,
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          // hintStyle: AppStyle.textStyleInterregular10.copyWith(
                          //     fontSize:
                          //         getFontSize(
                          //             10.0),
                          //     color: ColorConstant
                          //         .whiteA700),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  // color: ColorConstant
                                  //     .whiteA70019,
                                  width: 1)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  // color: ColorConstant
                                  //     .whiteA70019,
                                  width: 1)),
                          prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(5.00),
                                  right: getHorizontalSize(10.00)),
                              child: Container(
                                  height: getSize(14.00),
                                  width: getSize(14.00),
                                  child:
                                      SvgPicture.asset("assets/images/search.svg",
                                          // ImageConstant
                                          //     .imgVector4,
                                          fit: BoxFit.contain))),
                          prefixIconConstraints: BoxConstraints(
                              minWidth: getSize(14.00), minHeight: getSize(14.00)),
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              top: getVerticalSize(0.86),
                              bottom: getVerticalSize(6.86))),
                      style: TextStyle(
                          // color: ColorConstant
                          //     .whiteA700,
                          color: Colors.white,
                          fontSize: getFontSize(10.0),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400))),
              SizedBox(width: 10,),
              Text("Search")
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 30),
            height: 35,
            child: TabBar(
              controller: tabcontroller,
              indicatorColor: Colors.green,
              indicator: BoxDecoration(color: Colors.green),
              tabs: [
                Tab(
                    child: Text(
                  "Users",
                  style: TextStyle(color: Colors.white),
                )),
                Tab(
                    child: Text(
                  "Topics",
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabcontroller,
              children: [
                Search1Screen(),
                SearchTopicScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
