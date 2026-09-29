import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_navigation_model.dart';
import 'package:flutter/material.dart';

class AuthNavigationText extends StatelessWidget {
  const AuthNavigationText({super.key, required this.authNavigationModel});
  final AuthNavigationModel authNavigationModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(authNavigationModel.message, style: AppStyles.style14Regular),
        const SizedBox(width: 4),
        InkWell(
          onTap: authNavigationModel.onTap,
          child: Text(authNavigationModel.actionText, style: AppStyles.style14Bold),
        ),
      ],
    );
  }
}
