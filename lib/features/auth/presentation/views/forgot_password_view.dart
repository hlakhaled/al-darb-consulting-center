import 'package:al_darb_consulting_center/core/constants/assets.dart';
import 'package:al_darb_consulting_center/core/routes/app_router.dart';
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/core/widgets/custom_button.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/custom_text_form_field_with_label.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final List<AuthModel> loginFields = const [
    AuthModel(title: "البريد الإلكتروني", isPassword: false),
  ];
  late TextEditingController emailController;

  final formKey = GlobalKey<FormState>();
  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();

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
                    Text("نسيت كلمة المرور؟", style: AppStyles.style20Bold),
                    const SizedBox(height: 8),
                    Text(
                      "أدخل بريدك الإلكتروني لإرسال رابط إعادة التعيين",
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
                      title: "إرسال الرابط",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          // Perform login action
                        }
                      },
                    ),
                    const SizedBox(height: 16),

                    TextButton(
                      child: Text(
                        "العودة لتسجيل الدخول",
                        style: AppStyles.style14Bold,
                      ),
                      onPressed: () {
                        context.go(AppRouter.login);
                      },
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
