import 'package:al_darb_consulting_center/core/routes/app_router.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/remember_me_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginOptionsRow extends StatelessWidget {
  const LoginOptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RememberMeCheckbox(),
        const Spacer(),
        TextButton(
          onPressed: () {
            context.go(AppRouter.forgotPasswordView);
          },
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
