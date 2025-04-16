import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mentor/ui/page/sign_in/sign_in_page.dart';
import 'package:shop_mentor/ui/page/sign_up/sign_up_page.dart';

import 'package:shop_mentor/ui/page/splash/widget/styled_text.dart';
import 'package:shop_mentor/ui/widgets/app_button.dart';
import 'package:shop_mentor/utils/constants/app_colors.dart';
import 'package:shop_mentor/utils/constants/app_txt.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
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
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppButton(
                      text: AppTxt.signUpButton,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
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
                        AppTxt.signInButton,
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
      ),
    );
  }
}
