import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/core/widgets/custom_button.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_navigation_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/auth_navigation_text.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/custom_text_form_field_with_label.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/views/widgets/profile_image_picker.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final List<AuthModel> loginFields = const [
    AuthModel(title: "الاسم الكامل", isPassword: false),
    AuthModel(title: "رقم الهاتف", isPassword: false),
    AuthModel(title: "العنوان", isPassword: false),
  ];
  late TextEditingController fullNameController;
  late TextEditingController phoneController;
  late TextEditingController addressController;

  final formKey = GlobalKey<FormState>();
  @override
  initState() {
    super.initState();
    fullNameController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    phoneController.dispose();
    addressController.dispose();
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
                    Text("إنشاء حساب جديد", style: AppStyles.style20Bold),
                    const SizedBox(height: 8),
                    Text(
                      "أدخل بياناتك لإنشاء حسابك",
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
                            controller: fullNameController,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormFieldWithLabel(
                            authModel: loginFields[1],
                            controller: phoneController,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormFieldWithLabel(
                            authModel: loginFields[2],
                            controller: addressController,
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
                      title: "التالي",
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
