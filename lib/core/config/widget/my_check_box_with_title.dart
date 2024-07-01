// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';

class MyCheckBoxWithTitle extends StatefulWidget {
  bool? isChecked;
  final String Text;
  MyCheckBoxWithTitle({
    Key? key,
    this.isChecked,
    required this.Text,
  }) : super(key: key);
  @override
  State<MyCheckBoxWithTitle> createState() => _MyCheckBoxWithTitleState();
}

class _MyCheckBoxWithTitleState extends State<MyCheckBoxWithTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: InkWell(
            onTap: () {
              // bool isChecked2 = widget.isChecked!;
              setState(() {
                widget.isChecked = !widget.isChecked!;
              });
            },
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.purple3, width: 1.8),
                borderRadius: BorderRadius.circular(2),
                color: widget.isChecked == true
                    ? AppColor.purple3
                    : AppColor.white,
              ),
              child: widget.isChecked == true
                  ? Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(widget.Text,
              style: TextStyle(
                fontSize: 13,
                color: AppColor.grey1,
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2),
        ),
      ],
    );
  }
}
