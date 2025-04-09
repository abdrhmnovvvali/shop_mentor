import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mentor/util/constants/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.hintText, required this.title, required this.obscureText});

  final String hintText;
  final String title;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 15.h),

        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.formFillColor,
            contentPadding: const EdgeInsets.all(14),
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
