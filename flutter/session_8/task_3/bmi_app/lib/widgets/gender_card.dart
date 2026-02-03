import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/text_styles.dart';
import '../core/constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppConstants.cardHeight,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryPink : AppColors.cardBackground,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: AppConstants.genderIconSize,
              color: AppColors.textWhite,
            ),
            const SizedBox(height: 12),
            Text(label, style: AppTextStyles.genderLabel),
          ],
        ),
      ),
    );
  }
}
