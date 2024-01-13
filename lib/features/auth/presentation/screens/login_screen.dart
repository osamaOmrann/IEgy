import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/widgets/custom_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h),
            child: Column(
              children: [
                Text('تسجيل الدخول', style: Theme.of(context).textTheme.displayLarge,),
                SizedBox(height: 29.h,),
                CustomImage(imagePath: AppAssets.login),
                SizedBox(height: 24.h,),
                TextField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
