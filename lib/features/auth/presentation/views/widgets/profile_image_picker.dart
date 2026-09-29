
import 'package:al_darb_consulting_center/core/constants/assets.dart';
import 'package:al_darb_consulting_center/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileImagePicker extends StatelessWidget {
  const ProfileImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(Assets.assetsImagesMan),
          width: 110,
          height: 110,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    color: AppColors.blackBarrier,
                  ),
                ],
                borderRadius: BorderRadius.circular(40),
                color: AppColors.backgroundSurface,
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                color: AppColors.brandSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
