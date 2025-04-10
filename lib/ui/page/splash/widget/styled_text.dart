import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mentor/utils/constants/appColors/app_colors.dart';
import 'package:shop_mentor/utils/constants/appText/app_text.dart';

class StyledTextSpan extends StatelessWidget {
  const StyledTextSpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: GoogleFonts.inter(
              fontSize: 64, 
              fontWeight: FontWeight.w400, 
              color: AppColors.secondaryColor, 
            ),
            children: <TextSpan>[
              const TextSpan(text: 'Please your\n'),
              const TextSpan(text: 'eyes on the\n'),
              TextSpan(
                text: 'trending ',
                style: GoogleFonts.inter(
                  fontSize: 64,
                  fontWeight: FontWeight.w500, 
                  color: AppColors.coldLips,
                ),
              ),
              TextSpan(
                text: 'items\n',
                style: GoogleFonts.inter(
                  fontSize: 64,
                  fontWeight: FontWeight.w500,
                  color: AppColors.coldLips,
                ),
              ),
              TextSpan(
                text: 'Shopy.',
                style: GoogleFonts.inter(
                  fontSize: 64,
                  fontWeight: FontWeight.w400, 
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox.fromSize(size: const Size(0, 20)
        ,),
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 227,
            child: Text(
              AppText.splashSubTitle,
              textAlign: TextAlign.start,
              softWrap: true,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}