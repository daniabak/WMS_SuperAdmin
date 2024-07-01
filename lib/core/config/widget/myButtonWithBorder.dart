// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class myButtonWithBorder extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double margin;
  final Color buttonColor;
  final double? width;
  final EdgeInsetsGeometry paddingOfText;
  BoxBorder border;
  double radius;

  String text;

  Color textColor;
  double? fontsize;
  FontWeight fontWeight;
  myButtonWithBorder({
    Key? key,
    required this.paddingOfText,
    required this.onTap,
    required this.buttonColor,
    this.height,
    this.width,
    required this.border,
    required this.radius,
    required this.text,
    required this.textColor,
    required this.fontsize,
    required this.margin,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(margin),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: border,
        ),
        child: Padding(
          padding: paddingOfText,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: textColor, fontWeight: fontWeight, fontSize: fontsize),
            ),
          ),
        ),
      ),
    );
  }
}
