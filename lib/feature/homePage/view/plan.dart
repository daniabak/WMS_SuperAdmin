import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/config/widget/Titles.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';
import 'package:warehouse_managmenet/feature/homePage/view/monthly_plan.dart';
import 'package:warehouse_managmenet/feature/homePage/view/yearly_plan.dart';

class Plans extends StatelessWidget {
  const Plans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 0.3,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColor.purple3, AppColor.purple1, AppColor.purple2,
                      AppColor.purple3,

                      // AppColor.purple4,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderText(
                    text: "Choose your plan",
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    textcolor: AppColor.whiteColor,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.whiteColor),
                    child: TabBar(
                        automaticIndicatorColorAdjustment: false,
                        indicatorColor: AppColor.purple3,
                        labelColor: AppColor.purple3,
                        unselectedLabelColor: AppColor.greyColor,
                        tabs: const [
                          Tab(text: "Monthly"),
                          Tab(
                            text: 'Yearly',
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                MonthlyPlan(),
                YearlyPlan(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
