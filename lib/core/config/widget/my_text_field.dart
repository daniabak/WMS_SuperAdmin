import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';

class myTextFieldName extends StatelessWidget {
  final String? validatorText;
  String nameText;
  final bool readOnly;
  final String? label;
  myTextFieldName({
    super.key,
    this.validatorText,
    required this.nameText,
    required this.nameController,
    required this.readOnly,
    this.label,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      keyboardType: TextInputType.name,
      cursorColor: AppColor.grey1,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColor.red),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey2),
            borderRadius: BorderRadius.circular(12)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey2),
            borderRadius: BorderRadius.circular(12)),
        fillColor: AppColor.grey2,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey2),
            borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.grey2),
            borderRadius: BorderRadius.circular(12)),
        border:
            OutlineInputBorder(borderSide: BorderSide(color: AppColor.grey2)),
        hintText: nameText,
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(fontSize: 16, color: AppColor.purple4),
      ),
      validator: (text) {
        if (text!.isEmpty) {
          return validatorText;
        }
        return null;
      },
      controller: nameController,
    );
  }
}
