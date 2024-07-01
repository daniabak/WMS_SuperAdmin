// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class myContainerWithBorder extends StatelessWidget {
  double? height;

  double? width;
  BoxBorder? border;
  double radius;
  List<Color>? colors;
  Widget? child;
  final double elevation;
  Color containerColor;

  myContainerWithBorder({
    Key? key,
    this.height,
    this.width,
    required this.border,
    required this.radius,
    this.colors,
    required this.elevation,
    required this.child,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: border,
          
          color: containerColor,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
