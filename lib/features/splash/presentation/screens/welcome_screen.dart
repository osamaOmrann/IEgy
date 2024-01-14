import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/routes/app_routes.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/utils/app_colors.dart';
import 'package:iegy/core/utils/common_methods.dart';
import 'package:iegy/core/widgets/custom_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      2,
      (index) => CustomImage(imagePath:
        index == 0 ? AppAssets.splash1 : AppAssets.splash2,
      ),
    );

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
                onPageChanged: (int index) {
                  setState(() {
                    isFirstPage = index == 0;
                  });
                  print("Displayed Page: ${index + 1}");
                },
              ),
            ),
            SizedBox(height: 32.h),
            CustomImage(imagePath: AppAssets.appLogo, h: 126.h, w: 126.w,),
            SizedBox(height: 66.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Text(
                isFirstPage
                    ? AppLocalizations.of(context)!.we_make_furniture_with_your_eyes
                    : '${AppLocalizations.of(context)!.new_home_new_furniture}\n ${AppLocalizations.of(context)!.discover_our_distinctive_collection_of_furniture_and_renew_your_home_with_a_magical_touch}',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 66.h),
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
      floatingActionButton: GestureDetector(
        onTap: () => controller.page == pages.length - 1
            ? navigateLast(context: context, route: Routes.login)
            : controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppLocalizations.of(context)!.next,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Icon(
              Icons.arrow_right_outlined,
              color: AppColors.brown,
              size: 39.w,
            ),
          ],
        ),
      ),
    );
  }
}