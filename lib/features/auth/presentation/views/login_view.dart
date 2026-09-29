import 'package:al_darb_consulting_center/core/constants/assets.dart';
import 'package:al_darb_consulting_center/core/routes/app_router.dart';
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/core/widgets/custom_button.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_navigation_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/auth_navigation_text.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/custom_text_form_field_with_label.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/login_options_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final List<AuthModel> loginFields = const [
    AuthModel(title: "البريد الإلكتروني", isPassword: false),
    AuthModel(title: "كلمة المرور", isPassword: true),
  ];
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();
  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                          const LoginOptionsRow(),
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
                      title: "تسجيل الدخول",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          // Perform login action
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    AuthNavigationText(
                      authNavigationModel: AuthNavigationModel(
                        message: "ليس لديك حساب؟ ",
                        actionText: "إنشاء حساب جديد",
                        onTap: () {
                          context.go(AppRouter.createAccountView);
                        },
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
