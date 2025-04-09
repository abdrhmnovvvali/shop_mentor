import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:shop_mentor/util/constants/app_colors.dart';
import 'package:shop_mentor/util/constants/app_txt.dart';
import 'package:shop_mentor/util/widgets/text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
        child: FloatingActionButton(
          backgroundColor: AppColors.color1,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          child: const Icon(LucideIcons.moveRight, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.moveLeft, color: Colors.white),
                  ),

                  SizedBox(width: 101.w),
                  Text(
                    AppTxt.signUpTitle,
                    style: GoogleFonts.nunito(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40.h),

              const TextFieldWidget(
                hintText: AppTxt.hintText3,
                title: AppTxt.signInEmail,
                obscureText: false,
              ),

              SizedBox(height: 20.h),
              const TextFieldWidget(
                hintText: AppTxt.signInPassword,
                title: AppTxt.signInPassword,
                obscureText: true,
              ),

              SizedBox(height: 30.h),

              Text(
                AppTxt.forgotPassword,
                style: GoogleFonts.nunito(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),

              const Spacer(),

              SizedBox(
                height: 60.h,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppTxt.signup,
                    style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
              ),

              const SizedBox(height: kBottomNavigationBarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
