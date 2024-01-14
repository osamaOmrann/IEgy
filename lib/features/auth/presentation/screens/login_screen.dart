import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/utils/common_methods.dart';
import 'package:iegy/core/widgets/custom_image.dart';
import 'package:iegy/core/widgets/custom_text_form_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 55.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.login,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  const CustomImage(imagePath: AppAssets.login),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomTextFormField(
                    hint: AppLocalizations.of(context)!.email,
                    preIcon: Icons.mail,
                    validator: (data) {
                      if (!ValidationUtils.isValidEmail(data!)) {
                        return AppLocalizations.of(context)!.please_enter_valid_email;
                      }
                      if(data!.isEmpty) {
                        return AppLocalizations.of(context)!.email_is_required;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    hint: AppLocalizations.of(context)!.password,
                    preIcon: Icons.lock,
                    isObSecure: true,
                    suffixIcon: Icons.visibility,
                    onSuffixPressed: () {},
                    validator: (data) {
                      if(data!.isEmpty) {
                        return AppLocalizations.of(context)!.password_is_required;
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
