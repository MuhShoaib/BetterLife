import 'package:better_life/core/utils/color_constant.dart';
import 'package:better_life/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import '../../controllers/completeaccount_controller.dart';
import 'package:get/get.dart';
import '../../core/utils/math_utils.dart';

class CompleteAccount extends GetView<CompleteAccountController> {
  const CompleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => controller.currentIndex.value > 0
                    ? TextButton(
                        onPressed: () => controller.prevPage(),
                        child: Text("Previous", style: fontBody(fontWeight: FontWeight.w500, fontSize: 14, color: kWhiteColor)),
                      )
                    : TextButton(
                        onPressed: () {},
                        child: Text("        ", style: fontBody(fontWeight: FontWeight.w500, fontSize: 14, color: kWhiteColor)),
                      ),
              ),
              SizedBox(
                height: getVerticalSize(50.00),
                child: Image.asset("assets/images/logo.png", fit: BoxFit.fill),
              ),
              TextButton(
                onPressed: () => controller.nextPage(),
                child: Text("    Skip", style: fontBody(fontWeight: FontWeight.w500, fontSize: 14, color: kWhiteColor)),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Are you a male or female?", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Obx(
                                () => TextButton.icon(
                                  onPressed: () => controller.selectedGender.value = "Male",
                                  style: TextButton.styleFrom(
                                    primary: controller.selectedGender.value == "Male" ? kPrimaryColor : kWhiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: controller.selectedGender.value == "Male" ? kPrimaryColor : kWhiteColor, width: 1),
                                    ),
                                  ),
                                  icon: Icon(Icons.male),
                                  label: Text("Male", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16)),
                                ),
                              ),
                            ),
                            SizedBox(width: getHorizontalSize(20)),
                            Expanded(
                              flex: 1,
                              child: Obx(
                                () => TextButton.icon(
                                  onPressed: () => controller.selectedGender.value = "Female",
                                  style: TextButton.styleFrom(
                                    primary: controller.selectedGender.value == "Female" ? kPrimaryColor : kWhiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: controller.selectedGender.value == "Female" ? kPrimaryColor : kWhiteColor, width: 1),
                                    ),
                                  ),
                                  icon: Icon(Icons.female),
                                  label: Text("Female", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            controller.selectedGender.value = "Others";
                            controller.nextPage();
                          },
                          child: Text("Prefer not to say",
                              style: fontBody(fontWeight: FontWeight.w500, fontSize: 12, color: kWhiteColor, decoration: TextDecoration.underline)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/img_image27.png", width: context.width / 2),
                              Image.asset("assets/images/img_subtract_3.png", width: context.width / 3),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How much do you weight?", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Obx(
                                () => TextButton(
                                  onPressed: () => controller.selectedWeightUnit.value = "KG",
                                  style: TextButton.styleFrom(
                                    primary: controller.selectedWeightUnit.value == "KG" ? kPrimaryColor : kWhiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: controller.selectedWeightUnit.value == "KG" ? kPrimaryColor : kWhiteColor, width: 1),
                                    ),
                                  ),
                                  child: Text("KG", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16)),
                                ),
                              ),
                            ),
                            SizedBox(width: getHorizontalSize(20)),
                            Expanded(
                              flex: 1,
                              child: Obx(
                                () => TextButton(
                                  onPressed: () => controller.selectedWeightUnit.value = "LB",
                                  style: TextButton.styleFrom(
                                    primary: controller.selectedWeightUnit.value == "LB" ? kPrimaryColor : kWhiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: controller.selectedWeightUnit.value == "LB" ? kPrimaryColor : kWhiteColor, width: 1),
                                    ),
                                  ),
                                  child: Text("LB", style: fontBody(fontWeight: FontWeight.w500, fontSize: 16)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          height: 30,
                          width: context.width / 2,
                          child: InfiniteCarousel.builder(
                            itemCount: 66,
                            itemExtent: 60,
                            center: true,

                            velocityFactor: 0.1,
                            onIndexChanged: (index) {
                              controller.selectedWeight.value = 35 + index;
                            },
                            // controller: controller,
                            axisDirection: Axis.horizontal,
                            loop: false,
                            itemBuilder: (context, itemIndex, realIndex) {
                              int index = 35 + itemIndex;
                              return Obx(
                                () => Text(
                                  "${index}",
                                  style: controller.selectedWeight.value == index
                                      ? fontBody(color: kWhiteColor, fontSize: 30, fontWeight: FontWeight.bold)
                                      : fontBody(color: kWhiteColor.withOpacity(0.5), fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: context.width,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Obx(
                                  () => Text("KG",
                                      style: fontBody(
                                          fontSize: 120,
                                          color: controller.selectedWeightUnit.value == "KG" ? kPrimaryColor : kWhiteColor,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Obx(
                                  () => Text("LB",
                                      style: fontBody(
                                          fontSize: 120,
                                          color: controller.selectedWeightUnit.value == "LB" ? kPrimaryColor : kWhiteColor,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                child: Obx(
                                  () => controller.selectedGender == "Others"
                                      ? SizedBox()
                                      : Image.asset(
                                          controller.selectedGender == "Male" ? "assets/images/img_image27.png" : "assets/images/img_image24.png",
                                          width: context.width / 1.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("How tall are you? (In Inch)",
                          textAlign: TextAlign.center, style: fontBody(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white)),
                      SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          height: 30,
                          width: context.width / 2,
                          child: InfiniteCarousel.builder(
                            itemCount: 66,
                            itemExtent: 60,
                            center: true,

                            velocityFactor: 0.1,
                            onIndexChanged: (index) {
                              controller.selectedHeight.value = 35 + index;
                            },
                            // controller: controller,
                            axisDirection: Axis.horizontal,
                            loop: false,
                            itemBuilder: (context, itemIndex, realIndex) {
                              int index = 35 + itemIndex;
                              return Obx(
                                () => Text(
                                  "${index}",
                                  style: controller.selectedHeight.value == index
                                      ? fontBody(color: kWhiteColor, fontSize: 30, fontWeight: FontWeight.bold)
                                      : fontBody(color: kWhiteColor.withOpacity(0.5), fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: context.width,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Positioned(
                                top: 20,
                                left: 50,
                                child: Text("IN", style: fontBody(fontSize: 120, color: kWhiteColor, fontWeight: FontWeight.w700)),
                              ),
                              Positioned(
                                right: 0,
                                child: Obx(
                                  () => controller.selectedGender == "Others"
                                      ? SizedBox()
                                      : Row(
                                          children: [
                                            Image.asset(
                                                controller.selectedGender == "Male"
                                                    ? "assets/images/img_image28.png"
                                                    : "assets/images/img_subtract_2.png",
                                                width: context.width / 2),
                                            Image.asset("assets/images/Arrow 1.png")
                                          ],
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () => controller.nextPage(),
            style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(vertical: 20)),
            child: Obx(() => Text(controller.currentIndex > 1 ? "Save" : "Next", style: fontBody(fontSize: 14))),
          ),
        ),
      ),
    );
  }
}
