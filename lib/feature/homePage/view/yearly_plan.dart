import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/config/widget/Titles.dart';
import 'package:warehouse_managmenet/core/config/widget/contailnerWithBorder.dart';
import 'package:warehouse_managmenet/core/config/widget/iconWithText.dart';
import 'package:warehouse_managmenet/core/config/widget/myButtonWithBorder.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';

class YearlyPlan extends StatelessWidget {
  YearlyPlan({super.key});
  List<String> plans = ["Personal", "Proffessional", "Enterprise"];
  List<String> explainPlans = [
    "Perfect plan for starters",
    "For users who want to do more",
    "Analyze your company "
  ];
  List<String> prices = ["Free", "10 \$", "20\$"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: myContainerWithBorder(
              elevation: 11,
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width / 5,
              border: Border.all(width: 2, color: AppColor.purple3),
              radius: 14,
              containerColor: AppColor.purple1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 33,
                  ),
                  HeaderText(
                    text: plans[index],
                    fontSize: 22,
                    textcolor: AppColor.purple3,
                    fontWeight: FontWeight.w600,
                  ),
                  HeaderText(
                    text: explainPlans[index],
                    fontSize: 15,
                    textcolor: AppColor.greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  HeaderText(
                    text: prices[index],
                    fontSize: 27,
                    textcolor: AppColor.purple4,
                    fontWeight: FontWeight.bold,
                  ),
                  HeaderText(
                    text: "Per month",
                    fontSize: 15,
                    textcolor: AppColor.greyColor,
                    fontWeight: FontWeight.w400,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 22.0, bottom: 12, top: 8),
                    child: iconWithText(
                      text: "Unlimited Power-Ups",
                      icon: Icons.task_alt,
                      iconColor: AppColor.purple3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      bottom: 12,
                    ),
                    child: iconWithText(
                      text: "Sync across devices",
                      icon: Icons.task_alt,
                      iconColor: AppColor.purple3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      bottom: 12,
                    ),
                    child: iconWithText(
                      text: "Up to 10 social profile",
                      icon: Icons.close_outlined,
                      iconColor: AppColor.purple3,
                    ),
                  ),
                  if (index == 1 || index == 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: myButtonWithBorder(
                              width: MediaQuery.of(context).size.width / 11,
                              paddingOfText: EdgeInsets.all(12),
                              margin: 2,
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      child: Dialog(
                                        clipBehavior: Clip.hardEdge,
                                        shadowColor: AppColor.purple3,
                                        child: myContainerWithBorder(
                                          border: Border.all(
                                              color: AppColor.purple3),
                                          elevation: 88,
                                          radius: 1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              5,
                                          containerColor: AppColor.whiteColor,
                                          child: Column(
                                            children: [
                                              HeaderText(
                                                  text: "Edit plan:",
                                                  fontSize: 20,
                                                  textcolor: AppColor.purple4,
                                                  fontWeight: FontWeight.w500)
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              buttonColor: Colors.white,
                              border: Border.all(color: AppColor.purple3),
                              radius: 14,
                              text: "edit plan",
                              textColor: AppColor.purple3,
                              fontsize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        myButtonWithBorder(
                            paddingOfText: EdgeInsets.all(12),
                            margin: 11,
                            onTap: () {},
                            buttonColor: Colors.white,
                            border: Border.all(color: AppColor.purple3),
                            radius: 14,
                            text: "create discount",
                            textColor: AppColor.purple3,
                            fontsize: 15,
                            fontWeight: FontWeight.w500),
                      ],
                    )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
