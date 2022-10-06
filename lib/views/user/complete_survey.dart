import 'package:flutter/material.dart';

import '../../controllers/completesurvey_controller.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../core/utils/styles.dart';

class CompleteSurvey extends GetView<CompleteSurveyController> {
  const CompleteSurvey({Key? key}) : super(key: key);

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
                () => (controller.currentIndex.value > 0 && controller.currentIndex.value < 4)
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
              Obx(
                () => controller.currentIndex.value < 4
                    ? TextButton(
                        onPressed: () => controller.nextPage(),
                        child: Text("    Skip", style: fontBody(fontWeight: FontWeight.w500, fontSize: 14, color: kWhiteColor)),
                      )
                    : TextButton(
                        onPressed: () {},
                        child: Text("        ", style: fontBody(fontWeight: FontWeight.w500, fontSize: 14, color: kWhiteColor)),
                      ),
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
                  ListView(
                    children: [
                      Text(
                        "Based off our five principles, is there any principle you would choose not to have included? (You may select multiple)",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.toggleList("Physical Health"),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.healthList.contains("Physical Health") ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Physical Health",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.toggleList("Mental Health"),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.healthList.contains("Mental Health") ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Mental Health",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.toggleList("Financial Health"),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.healthList.contains("Financial Health") ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Financial Health",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.toggleList("Spiritual Health"),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.healthList.contains("Spiritual Health") ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Spiritual Health",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.toggleList("Social Health"),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.healthList.contains("Social Health") ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Social Health",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: getVerticalSize(30)),
                      Text(
                        "What is your zipcode?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: fontBody(fontSize: 14, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      TextFormField(
                        controller: controller.zipcodeController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter zipcode",
                          hintStyle: fontBody(fontSize: getFontSize(12.0), color: kBlueGreyColor),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kWhiteColor, width: 1)),
                          isDense: true,
                          contentPadding: EdgeInsets.only(top: getVerticalSize(1.03), bottom: getVerticalSize(6.03)),
                        ),
                        style: fontBody(color: kBlueGreyColor, fontSize: getFontSize(12.0), fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Text(
                        "How many days would you like to exercise a week?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.exerciseDays.value = "1 Day/Week",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.exerciseDays.value == "1 Day/Week" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "1 Day/Week",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.exerciseDays.value = "2-3 Days/Week",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.exerciseDays.value == "2-3 Days/Week" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "2-3 Days/Week",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.exerciseDays.value = "4-5 Days/Week",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.exerciseDays.value == "4-5 Days/Week" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "4-5 Days/Week",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.exerciseDays.value = "6 Days/Week",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.exerciseDays.value == "6 Days/Week" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "6 Days/Week",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: getVerticalSize(30)),
                      Text(
                        "What type of training would you like to participate in?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.training.value = "Weightlifting",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.training.value == "Weightlifting" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Weightlifting",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.training.value = "Cardio Training & Weightlifting",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.training.value == "Cardio Training & Weightlifting" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Cardio Training & Weightlifting",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.training.value = "Cardio Training",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.training.value == "Cardio Training" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Cardio Training",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.training.value = "Sports Player",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.training.value == "Sports Player" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Sports Player",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Text(
                        "What is your current mental state?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.mentalState.value = "Happy as ever!",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalState.value == "Happy as ever!" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Happy as ever!",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalState.value = "Pretty good but looking to improve.",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalState.value == "Pretty good but looking to improve." ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Pretty good but looking to improve.",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalState.value = "Not bad, not great",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalState.value == "Not bad, not great" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Not bad, not great",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalState.value = "Not good",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalState.value == "Not good" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Not good",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalState.value = "Horrible",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalState.value == "Horrible" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Horrible",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: getVerticalSize(30)),
                      Text(
                        "What are you looking to work on when it comes to your mental health?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.mentalHealthSolution.value = "Deal with stress and anxiety better",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalHealthSolution.value == "Deal with stress and anxiety better"
                                          ? Icons.circle
                                          : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Deal with stress and anxiety better",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalHealthSolution.value = "Overcome current issues",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalHealthSolution.value == "Overcome current issues" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Overcome current issues",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalHealthSolution.value = "Have a more positive mindset",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalHealthSolution.value == "Have a more positive mindset" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Have a more positive mindset",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalHealthSolution.value = "Seek therapy",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalHealthSolution.value == "Seek therapy" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Seek therapy",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.mentalHealthSolution.value = "Become happier with myself",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.mentalHealthSolution.value == "Become happier with myself" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Become happier with myself",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Text(
                        "What are you looking to work on when it comes to your financials?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.financial.value = "Cancel recurring charges",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.financial.value == "Cancel recurring charges" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Cancel recurring charges",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.financial.value = "Spend less money",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.financial.value == "Spend less money" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Spend less money",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.financial.value = "Looking to invest",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.financial.value == "Looking to invest" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Looking to invest",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.financial.value = "Looking to make passive income",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.financial.value == "Looking to make passive income" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Looking to make passive income",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: getVerticalSize(30)),
                      Text(
                        "What are you looking to work on when it comes to your spiritual health?",
                        style: fontBody(fontSize: 16, fontWeight: FontWeight.w500, color: kWhiteColor),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Obx(
                        () => Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                onTap: () => controller.spiritualHealthSolution.value = "Become more in tune with my spirituality",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.spiritualHealthSolution.value == "Become more in tune with my spirituality"
                                          ? Icons.circle
                                          : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Become more in tune with my spirituality",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.spiritualHealthSolution.value = "Meditate more",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.spiritualHealthSolution.value == "Meditate more" ? Icons.circle : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Meditate more",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.spiritualHealthSolution.value = "Spread the word on spirituality more",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.spiritualHealthSolution.value == "Spread the word on spirituality more"
                                          ? Icons.circle
                                          : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Spread the word on spirituality more",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(5)),
                              InkWell(
                                onTap: () => controller.spiritualHealthSolution.value = "Learn new ways to practice spirituality",
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      controller.spiritualHealthSolution.value == "Learn new ways to practice spirituality"
                                          ? Icons.circle
                                          : Icons.circle_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      "Learn new ways to practice spirituality",
                                      style: fontBody(color: kWhiteColor, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Thank you!", textAlign: TextAlign.center, style: fontBody(fontSize: 36, color: kWhiteColor)),
                      SizedBox(height: getVerticalSize(20)),
                      Text("We will now set up your profile based on your answers.",
                          textAlign: TextAlign.center, style: fontBody(fontSize: 24, color: kWhiteColor)),
                    ],
                  )
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
            child: Obx(() => Text(controller.currentIndex > 3 ? "Continue" : "Next", style: fontBody(fontSize: 14))),
          ),
        ),
      ),
    );
  }
}
