import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mentor/utils/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, this.onPressed});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 65,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.color1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.nunito(
            fontSize: 26,
            fontWeight: FontWeight.w400,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
