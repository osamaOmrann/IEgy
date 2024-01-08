import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iegy/core/routes/app_routes.dart';
import 'package:iegy/core/theme/app_theme.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) => MaterialApp(
        initialRoute: Routes.initialRoute,
        onGenerateRoute: AppRoutes.generateRoute,
        title: 'IEgy',
        theme: getAppTheme(),
      ),
    );
  }
}
