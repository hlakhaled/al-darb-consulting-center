
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:al_darb_consulting_center/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RememberMeCheckbox extends StatelessWidget {
  const RememberMeCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Checkbox(
              checkColor: AppColors.backgroundSurface,
              activeColor: AppColors.brandPrimary,
              side: BorderSide(
                color: AppColors.strokeDefault,
                width: 1.5,
              ),
              value: state.rememberMe,
              onChanged: (value) {
                context.read<AuthCubit>().toggleRememberMe(
                  value!,
                );
              },
            );
          },
        ),
        Text("تذكرني", style: AppStyles.style14SemiBold),
      ],
    );
  }
}
