// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';

class myTextFieldNumber extends StatelessWidget {
  final String? validatorText;
  final String? phoneText;
  final int? maxLength;
  final bool? ReadeOnly;
  myTextFieldNumber({
    Key? key,
    this.validatorText,
    this.phoneText,
    this.maxLength,
    required this.phoneController,
    this.ReadeOnly,
  }) : super(key: key);

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          // LengthLimitingTextInputFormatter(10), // +20 و 10 أرقام
        ],
        readOnly: ReadeOnly ?? false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: maxLength,
        keyboardType: TextInputType.phone,
        cursorColor: AppColor.purple3,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: AppColor.purple3),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.purple3),
              borderRadius: BorderRadius.circular(12)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.purple3),
              borderRadius: BorderRadius.circular(12)),
          fillColor: Colors.grey[200],
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.purple3),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.purple3),
              borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.purple3)),
          hintText: phoneText,
          labelStyle: TextStyle(fontSize: 77, color: AppColor.purple3),
        ),
        controller: phoneController,
        validator: (text) {
          if (text!.isEmpty) {
            return validatorText;
          }
        },
      ),
    );
  }
}
