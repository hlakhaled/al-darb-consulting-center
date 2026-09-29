
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AuthNavigationText extends StatelessWidget {
  const AuthNavigationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("ليس لديك حساب؟", style: AppStyles.style14Regular),
        const SizedBox(width: 4),
        InkWell(
          onTap: () {},
          child: Text(
            "إنشاء حساب جديد",
            style: AppStyles.style14Bold,
          ),
        ),
      ],
    );
  }
}
