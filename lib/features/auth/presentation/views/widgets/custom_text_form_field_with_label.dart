import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/data/models/auth_model.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormFieldWithLabel extends StatelessWidget {
  const CustomTextFormFieldWithLabel({super.key, required this.authModel});
  final AuthModel authModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(authModel.title, style: AppStyles.style14SemiBold),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            focusedBorder: buildBorder(AppColors.brandPrimary),
            enabledBorder: buildBorder(Color(0xffDEE2E6)),
            border: buildBorder(Color(0xffDEE2E6)),

            suffixIcon: authModel.isPassword
                ? BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return IconButton(
                        onPressed: () {
                          context.read<LoginCubit>().togglePasswordVisibility();
                        },
                        icon: Icon(
                          state.isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        color: AppColors.textSecondary,
                      );
                    },
                  )
                : null,
          ),
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
