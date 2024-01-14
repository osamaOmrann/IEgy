import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_colors.dart';
import 'package:iegy/core/utils/app_text_style.dart';

ThemeData getAppTheme() {
  return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primary,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.darkBlue // *** As default value need to be changed ***
      ),
      textTheme: TextTheme(
          displayLarge: boldStyle(color: AppColors.brown),
          displayMedium: mediumStyle(),
        displaySmall: regularStyle()
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(59)
              )
          )
      ),
      inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(59),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(59),
            ),
          hintStyle: regularStyle(color: AppColors.grey, fontSize: 14.w),
          contentPadding: const EdgeInsets.symmetric(vertical: 0)
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(AppColors.grey),
              textStyle: MaterialStateProperty.all(
                  boldStyle(color: AppColors.grey, fontSize: 16)
              )
          )
      )
  );
}