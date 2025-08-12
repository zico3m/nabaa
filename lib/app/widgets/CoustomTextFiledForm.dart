import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constants/app_fonts.dart';
import '../core/constants/app_colors.dart';

class CustomTextFieldForm extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final RxnString errorText;
  final bool obscured;
  final Function(String) onChanged;

  const CustomTextFieldForm({
    super.key,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    required this.errorText,
    this.obscured = false,
    required this.onChanged,
      this.controller,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Obx(() => TextFormField(
        controller: controller,
        obscureText: obscured,
        onChanged: onChanged,
        cursorColor: Colors.blueAccent,
        style: AppFonts.titlefortext.copyWith(fontSize: 16),
        decoration: InputDecoration(
          labelText: labelText,
          errorText: errorText.value,
          hintText: hintText,
          hintStyle: AppFonts.titlefortext.copyWith(
            color: Colors.black54,
            fontSize: 15,
            fontFamily: "Cairo",
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          suffixIconColor: Colors.blueAccent,
          prefixIconColor: Colors.blueAccent,
          filled: true,
          fillColor: AppColor.background,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
        ),
      )),
    );
  }
}
