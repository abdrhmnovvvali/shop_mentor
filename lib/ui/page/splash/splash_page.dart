import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mentor/ui/page/splash/widget/styled_text.dart';
import 'package:shop_mentor/utils/constants/appButtons/app_button.dart';
import 'package:shop_mentor/utils/constants/appColors/app_colors.dart';
import 'package:shop_mentor/utils/constants/appText/app_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 38,
            top: 92,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StyledTextSpan(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppButton(
                    text: AppText.signUpButton,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashPage(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplashPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.only(
                        left: 43,
                        top: 15,
                        right: 43,
                        bottom: 15,
                      ),
                    ),
                    child: Text(
                      AppText.signInButton,
                      style: GoogleFonts.nunito(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
