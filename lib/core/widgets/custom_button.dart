import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.background,
      required this.text, this.withIcon = false, this.icon, this.textColor, this.w = 320, this.h = 52});
  final double? h, w;
  final VoidCallback onPressed;
  final Color? background, textColor;
  final String text;
  final bool? withIcon;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: h!.h,
        width: w!.w,
        child: ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                backgroundColor:
                    MaterialStateProperty.all(background ?? AppColors.brown)),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: withIcon == true? MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: textColor ?? AppColors.white, fontSize: 16.w),
                ),
                if(withIcon == true) icon ?? const Icon(Icons.error),
              ],
            )));
  }
}
