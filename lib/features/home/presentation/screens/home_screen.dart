import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/widgets/custom_button.dart';
import 'package:iegy/core/widgets/custom_image.dart';
import 'package:iegy/core/widgets/custom_text_form_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iegy/features/home/presentation/cubit/home_cubit.dart';
import 'package:iegy/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            appBar: state is HomeSearchingState
                ? null
                : AppBar(
                    leading: const Icon(
                      Icons.menu,
                    ),
                    title: const CustomImage(
                      imagePath: AppAssets.homeLogo,
                    ),
                    actions: const [
                      CustomImage(imagePath: AppAssets.notifications)
                    ],
                  ),
            body: Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Row(
                children: [
                  SizedBox(
                    width: ((430 - 398) / 2).w,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 350.w,
                              child: GestureDetector(
                                onTap: () => BlocProvider.of<HomeCubit>(context)
                                    .onSearchFieldPressed,
                                child: CustomTextFormField(
                                  shadow: true,
                                  preIcon: Icons.search,
                                  suffixIcon: CupertinoIcons.mic_solid,
                                  hint: AppLocalizations.of(context)!
                                      .what_are_u_looking_for,
                                ),
                              )),
                          SizedBox(width: 20.w),
                          const CustomImage(imagePath: AppAssets.replace)
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      if(state is HomeInitial) Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16.w),
                            width: 398.w,
                            height: 203.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffe8e3da)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 106.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                        // maxLines: 2,
                                        overflow: TextOverflow.fade,
                                        text: TextSpan(
                                          text: AppLocalizations.of(context)!
                                              .here_we_make_u_fall_in_love_with_the_place_u_live_in,
                                          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                            height: 2.h,
                                          ),
                                        ),
                                      ),
                                      CustomButton(
                                        h: 22.h,
                                          onPressed: () {},
                                          text: AppLocalizations.of(context)!
                                              .contact_us, fontSize: 10.w,)
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const CustomImage(imagePath: AppAssets.home1st)
                              ],
                            ),
                          ),
                          ListView(
                            scrollDirection: Axis.horizontal,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ));
      },
    ));
  }
}
