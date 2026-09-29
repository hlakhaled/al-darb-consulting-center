import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormFieldWithLabel extends StatelessWidget {
  const CustomTextFormFieldWithLabel({
    super.key,
    required this.authModel,
    required this.controller,
  });
  final AuthModel authModel;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(authModel.title, style: AppStyles.style14SemiBold),
        const SizedBox(height: 8),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return TextFormField(
              obscureText: authModel.isPassword && !state.isPasswordVisible,
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "${authModel.title} مطلوب";
                }
                return null;
              },
              decoration: InputDecoration(
                focusedBorder: buildBorder(AppColors.brandSecondary),
                enabledBorder: buildBorder(Color(0xffDEE2E6)),
                border: buildBorder(Color(0xffDEE2E6)),

                suffixIcon: authModel.isPassword
                    ? IconButton(
                        onPressed: () {
                          authModel.isConfirmPassword
                              ? context
                                    .read<AuthCubit>()
                                    .toggleConfirmPasswordVisibility()
                              : context
                                    .read<AuthCubit>()
                                    .togglePasswordVisibility();
                        },
                        icon: Icon(
                          authModel.isConfirmPassword
                              ? state.isConfirmPasswordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined
                              :
                          state.isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        color: AppColors.textSecondary,
                      )
                    : null,
              ),
            );
          },
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
