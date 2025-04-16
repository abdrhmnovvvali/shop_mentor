import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mentor/ui/widgets/custom_app_bar.dart';
import 'package:shop_mentor/utils/constants/app_colors.dart';
import 'package:shop_mentor/utils/constants/app_txt.dart';
import 'package:shop_mentor/utils/widgets/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(
        title: AppTxt.signInTitle,
        leadIcon: AppTxt.arrowLeft,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextFormField(
                  hintText: AppTxt.hintText1,
                  title: AppTxt.signUpEmail,
                  obscureText: false),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFormField(
                  hintText: AppTxt.signUpPassword,
                  title: AppTxt.signUpPassword,
                  obscureText: true),

              SizedBox(
                height: 30.h,
              ),

              // Forgot Password

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 117.5.w),
                child: Text(
                  AppTxt.forgotPassword,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),

              // Bottom Text
              SizedBox(
                height: 396.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigation to the SignUpPage
                    },
                    child: Center(
                      child: Text(
                        AppTxt.signInBottomText,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: AppColors.platinum),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.r),
          ),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: SvgPicture.asset(
              AppTxt.arrowLeft,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          )),
    );
  }
}
