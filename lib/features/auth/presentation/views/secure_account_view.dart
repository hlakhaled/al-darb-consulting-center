import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/core/widgets/custom_button.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_navigation_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/auth_navigation_text.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/custom_text_form_field_with_label.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/profile_image_picker.dart';
import 'package:flutter/material.dart';

class SecureAccountView extends StatefulWidget {
  const SecureAccountView({super.key});

  @override
  State<SecureAccountView> createState() => _SecureAccountViewState();
}

class _SecureAccountViewState extends State<SecureAccountView> {
  final List<AuthModel> loginFields = const [
    AuthModel(title: "البريد الإلكتروني", isPassword: false),
    AuthModel(title: "كلمة المرور", isPassword: true),
    AuthModel(
      title: "تأكيد كلمة المرور",
      isPassword: true,
      isConfirmPassword: true,
    ),
  ];
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  final formKey = GlobalKey<FormState>();
  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 48),
                    const ProfileImagePicker(),
                    const SizedBox(height: 16),
                    Text("تأمين الحساب", style: AppStyles.style20Bold),
                    const SizedBox(height: 8),
                    Text(
                      "أكمل بيانات الدخول لحماية حسابك وإتمام التسجيل.",
                      style: AppStyles.style12Regular.copyWith(
                        color: AppColors.textHighContrast,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomTextFormFieldWithLabel(
                            authModel: loginFields[0],
                            controller: emailController,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormFieldWithLabel(
                            authModel: loginFields[1],
                            controller: passwordController,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormFieldWithLabel(
                            authModel: loginFields[2],
                            controller: confirmPasswordController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      title: "إنشاء الحساب",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          // Perform login action
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    AuthNavigationText(
                      authNavigationModel: AuthNavigationModel(
                        message: "لديك حساب بالفعل؟",
                        actionText: "تسجيل الدخول",
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 88),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
