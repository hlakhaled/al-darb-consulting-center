import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.onTap, super.key, required this.title});
  final VoidCallback? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.gradientPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: title == "التالي"
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppStyles.style16Bold,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: AppColors.backgroundSurface),
                ],
              )
            : Text(
                title,
                style: AppStyles.style16Bold,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
