import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, this.background, required this.text});
  final double? h = 52, w = 320;
  final VoidCallback onPressed;
  final Color? background;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: h!.h,
        width: w!.w,
        child: ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all(background ?? AppColors.brown)
            ),
            onPressed: onPressed, child: Text(text, style: Theme.of(context).textTheme.displayLarge!.copyWith(color: AppColors.white),)));
  }
}
