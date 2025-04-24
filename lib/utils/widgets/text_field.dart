import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mentor/utils/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.title,
      required this.obscureText});

  final String hintText;
  final String title;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              )),
        ),
        SizedBox(height: 15.h),
        TextField(
          obscureText: obscureText,
          style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColors.primaryTextColor),
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.formFillColor,
              contentPadding: const EdgeInsets.all(14),
              hintText: hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintStyle: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.primaryTextColor)),
        ),
      ],
    );
  }
}
