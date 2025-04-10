import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:shop_mentor/util/constants/app_colors.dart';
import 'package:shop_mentor/util/constants/app_txt.dart';
import 'package:shop_mentor/util/widgets/text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.color1,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        child: const Icon(LucideIcons.moveRight, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.moveLeft),
                  ),

                  SizedBox(width: 33.w),
                  Text(
                    AppTxt.signInTitle,
                    style: GoogleFonts.nunito(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40.h),

              const TextFieldWidget(
                hintText: AppTxt.hintText1,
                title: AppTxt.signInUsername,
                obscureText: false,
              ),

              SizedBox(height: 20.h),
              const TextFieldWidget(
                hintText: AppTxt.hintText2,
                title: AppTxt.signInPhoneNumber,
                obscureText: false,
              ),

              SizedBox(height: 20.h),
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

              // RICH TEXT
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 94.w),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppTxt.signInRichText1,
                        style: GoogleFonts.nunito(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      TextSpan(
                        text: AppTxt.signInRichText2,
                        style: GoogleFonts.nunito(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              SizedBox(
                height: 60.h,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppTxt.login,
                    style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
