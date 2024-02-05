import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_colors.dart';
import 'package:iegy/core/widgets/custom_image.dart';

class HomeCategory extends StatelessWidget {
  HomeCategory({super.key, this.first, required this.icon});
  bool? first = false;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      width: 39.w,
      decoration: BoxDecoration(
        color: first == true? AppColors.brown:AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: CustomImage(imagePath: icon),
    );
  }
}
