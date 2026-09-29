import 'package:al_darb_consulting_center/core/constants/assets.dart';
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/custom_text_form_field_with_label.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  final List<AuthModel> loginFields = const [
    AuthModel(title: "البريد الإلكتروني", isPassword: false),
    AuthModel(title: "كلمة المرور", isPassword: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image(
                image: AssetImage(Assets.assetsImagesLogo),
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 16),
              Text("تسجيل الدخول", style: AppStyles.style20Bold),
              const SizedBox(height: 8),
              Text(
                "قم بتسجيل الدخول إلى حسابك",
                style: AppStyles.style12Regular.copyWith(
                  color: AppColors.textHighContrast,
                ),
              ),
              const SizedBox(height: 32),
              CustomTextFormFieldWithLabel(authModel: loginFields[0]),
              const SizedBox(height: 24),
              CustomTextFormFieldWithLabel(authModel: loginFields[1]),
            ],
          ),
        ),
      ),
    );
  }
}
