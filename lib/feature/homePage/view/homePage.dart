import 'package:flutter/material.dart';

import 'package:warehouse_managmenet/core/config/widget/Titles.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';
import 'package:warehouse_managmenet/feature/customer/view/customer_view.dart';
import 'package:warehouse_managmenet/feature/homePage/view/plan.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Plans(),
    CustomerView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: AppColor.purple3,
            useIndicator: true,
            // extended: true,
            labelType: NavigationRailLabelType.selected,
            selectedIndex: _selectedIndex,
            destinations: [
              NavigationRailDestination(
                padding: const EdgeInsets.only(bottom: 22),
                icon: const Icon(
                  Icons.home,
                  size: 22,
                ),
                label: HeaderText(
                  text: 'Home Page',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  textcolor: AppColor.whiteColor,
                ),
              ),
              NavigationRailDestination(
                padding: const EdgeInsets.only(bottom: 22),
                icon: const Icon(
                  Icons.person,
                  size: 22,
                ),
                label: HeaderText(
                  text: 'Customers',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  textcolor: AppColor.whiteColor,
                ),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(bottom: 22),
                icon: const Icon(
                  Icons.logout,
                  size: 22,
                ),
                label: Column(
                  children: [
                    HeaderText(
                      text: 'Logout',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textcolor: AppColor.whiteColor,
                    ),
                    const Divider(
                      color: AppColor.yellowColor,
                      thickness: 66,
                    )
                  ],
                ),
              ),
            ],
            leading: const SizedBox(
              height: 100,
            ),
            indicatorColor: AppColor.whiteColor,
            minWidth: 55, //MediaQuery.of(context).size.width / 26,
            selectedIconTheme: IconThemeData(color: AppColor.purple3, size: 66),
            unselectedIconTheme:
                const IconThemeData(color: AppColor.whiteColor, size: 22),
            selectedLabelTextStyle: TextStyle(
              color: Color.fromARGB(0, 22, 53, 109),
              fontSize: 28,
              letterSpacing: 0.8,
            ),
            unselectedLabelTextStyle: const TextStyle(
              color: AppColor.yellowColor,
              fontSize: 17,
            ),
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
              print(_selectedIndex);
            },
          ),
          Expanded(child: _pages[_selectedIndex])
        ],
      ),
    );
  }
}
