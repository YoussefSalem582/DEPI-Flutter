import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/constants.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;

  const CircleButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.circleButtonSize,
      height: AppConstants.circleButtonSize,
      decoration: BoxDecoration(
        color: AppColors.buttonBackground,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: AppColors.textWhite,
        size: AppConstants.circleIconSize,
      ),
    );
  }
}
