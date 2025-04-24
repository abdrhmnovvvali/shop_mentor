import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mentor/cubits/signUp/sign_up_cubit.dart';
import 'package:shop_mentor/ui/page/sign_in/sign_in_page.dart';
import 'package:shop_mentor/ui/widgets/custom_app_bar.dart';
import 'package:shop_mentor/ui/widgets/custom_text_form_field.dart';
import 'package:shop_mentor/utils/constants/app_colors.dart';
import 'package:shop_mentor/utils/constants/app_txt.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(
        title: AppTxt.signUpTitle,
        leadIcon: AppTxt.arrowLeft,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
               CustomTextFormField(
                controller: cubit.usernameController,

                  hintText: AppTxt.hintText1,
                  title: AppTxt.signUpUsername,
                  obscureText: false),
              SizedBox(
                height: 20.h,
              ),
               CustomTextFormField(
                  controller: cubit.phoneController,

                  hintText: AppTxt.hintText2,
                  title: AppTxt.signUpPhoneNumber,
                  obscureText: false),
              SizedBox(
                height: 20.h,
              ),
               CustomTextFormField(
                  controller: cubit.emailController,
                  hintText: AppTxt.hintText3,
                  title: AppTxt.signUpEmail,
                  obscureText: false),
              SizedBox(
                height: 20.h,
              ),
               CustomTextFormField(
                  controller: cubit.passwordController,
                  hintText: AppTxt.signUpPassword,
                  title: AppTxt.signUpPassword,
                  obscureText: true),
              20.verticalSpace,
                CustomTextFormField(
                  controller: cubit.confirmPasswordController,
                  hintText: AppTxt.signUpPassword,
                  title:"Confirm Password",
                  obscureText: true),    

              SizedBox(
                height: 30.h,
              ),

              // Rich Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 94.5.w),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                    TextSpan(
                        text: AppTxt.signUpRichText1,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w200,
                            fontSize: 12.sp)),
                    TextSpan(
                        text: AppTxt.signUpRichText2,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp))
                  ]),
                ),
              ),

              // Bottom Text
              SizedBox(
                height: 181.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()));
                    },
                    child: Center(
                      child: Text(
                        AppTxt.signUpBottomText,
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
          onPressed: () {
            cubit.handleSignUp(context);
          },
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
