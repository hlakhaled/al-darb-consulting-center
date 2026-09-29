
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.gradientPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "تسجيل الدخول",
          style: AppStyles.style16Bold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
