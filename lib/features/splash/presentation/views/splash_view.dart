import 'package:al_darb_consulting_center/core/constants/assets.dart';
import 'package:al_darb_consulting_center/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.assetsImagesLogo, width: 135, height: 135),
              const SizedBox(height: 16),
              Text("مركز الدرب للاستشارات", style: AppStyles.style20SemiBold),
              const SizedBox(height: 8),
              Text(
                "AL DARB CONSULTING CENTER",
                style: AppStyles.style12Regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
