import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/core/widgets/custom_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pinput/pinput.dart';

class CheckEmailScreen extends StatelessWidget {
  static const String routeName = 'check_email_screen';

  get floatingActionButton => null;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PinTheme defaultPinTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomImage(imagePath: AppAssets.checkMail),
              SizedBox(
                height: 30.h,
              ),
              // floatingActionButton: GestureDetector(
              //   onTap: () => controller.page == pages.length - 1
              //       ? navigateLast(context: context, route: Routes.login)
              //       : controller.nextPage(
              //     duration: const Duration(milliseconds: 500),
              //     curve: Curves.ease,
              //   ),
              //     ),
              Text(
                AppLocalizations.of(context)!.check_your_email,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 24.w),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                AppLocalizations.of(context)!
                    .we_have_sent_you_a_four_digit_code,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Pinput(
                    keyboardType: TextInputType.number,
                    defaultPinTheme: PinTheme(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                    ),
                    focusedPinTheme: PinTheme(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                    ),
                    submittedPinTheme: PinTheme(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                    ),
                    controller: controller,
                  ),
                ),
              ]),
              SizedBox(
                height: 16.h,
              ),

              Text(
                AppLocalizations.of(context)!.send_the_code_again,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          //labelText: 'Number',
        ),
      ),
    );
  }
}

// Pinput

Widget buildPinPut() {
  return Pinput(
    onCompleted: (pin) => print(pin),
  );
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);
final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Color.fromRGBO(234, 239, 243, 1),
  ),
);
