// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:warehouse_managmenet/core/config/widget/Titles.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';

class iconWithText extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? iconColor;
  iconWithText({
    super.key,
    required this.text,
    this.iconColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: HeaderText(
            text: text,
            fontSize: 15,
            textcolor: AppColor.blackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
