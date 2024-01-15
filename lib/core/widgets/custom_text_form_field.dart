import 'package:flutter/material.dart';
import 'package:iegy/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.controller,
      this.hint,
      this.label,
      this.validator,
      this.isObSecure,
      this.preIcon,
      this.suffixIcon,
      this.onSuffixPressed});
  final TextEditingController? controller;
  final String? hint, label;
  final String? Function(String?)? validator;
  final bool? isObSecure;
  final IconData? preIcon, suffixIcon;
  final VoidCallback? onSuffixPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isObSecure ?? false,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          prefixIcon: Icon(preIcon, color: AppColors.darkBlue),
          suffixIcon: IconButton(
              onPressed: onSuffixPressed,
              icon: Icon(suffixIcon, color: AppColors.darkBlue))),
    );
  }
}
