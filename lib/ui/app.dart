import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mentor/ui/page/sign_up/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        darkTheme: ThemeData.dark(),
        home: const SignUpPage(),
      ),
      home: const SplashPage(),

    );
  }
}
