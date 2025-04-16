import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mentor/utils/constants/app_txt.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leadIcon = AppTxt.arrowLeft,
    this.onLeadingPressed,
  });

  final String? title;
  final String? leadIcon;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        leading: leadIcon == null
            ? null
            : GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Center(
                  child: SvgPicture.asset(
                    leadIcon!,
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    height: 32.r,
                    width: 32.r,
                  ),
                ),
              ),
        title: title == null
            ? null
            : Text(
                title!,
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700,
                    fontSize: 26.sp),
              ),
        titleTextStyle: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: 26.sp,
          height: 35.h / 26.sp,
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
