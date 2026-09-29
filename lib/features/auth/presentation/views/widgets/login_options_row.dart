import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/remember_me_checkbox.dart';
import 'package:flutter/material.dart';

class LoginOptionsRow extends StatelessWidget {
  const LoginOptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RememberMeCheckbox(),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "نسيت كلمة المرور؟",
            style: AppStyles.style14SemiBold.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
