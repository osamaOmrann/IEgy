import 'package:flutter/material.dart';
import 'package:iegy/core/utils/app_colors.dart';
import 'package:iegy/core/utils/app_text_style.dart';

ThemeData getAppTheme() {
  return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primary,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.blue // *** As default value need to be changed ***
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
                  borderRadius: BorderRadius.circular(8)
              )
          )
      ),
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          hintStyle: boldStyle(color: AppColors.grey, fontSize: 16)
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