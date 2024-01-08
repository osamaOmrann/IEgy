import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    bool first = true;
    final pages = List.generate(
        2,
        (index) => Image.asset(
              index == 0 ? AppAssets.splash1 : AppAssets.splash2,
            ));

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 420.h,
              width: 430.w,
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
                onPageChanged: (_) => setState(() => first = !first),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Image.asset(
              AppAssets.appLogo,
              height: 126.h,
              width: 126.w,
            ),
            SizedBox(
              height: 66.h,
            ),
            Text(
              first
                  ? '!!نصنع الأثاث بعيونك أنت'
                  : '!!بيت جديد!! أثاث جديد\nاكتشف تشكيلتنا المميزة من الأثاث و جدد منزلك بلمسة سحرية.',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 66.h,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.brown,
                dotColor: AppColors.grey,
                dotHeight: 6.h,
                dotWidth: 6.w,
                spacing: 3,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'التالي',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Icon(
            Icons.play_arrow,
            color: AppColors.brown,
          )
        ],
      ),
    );
  }
}
