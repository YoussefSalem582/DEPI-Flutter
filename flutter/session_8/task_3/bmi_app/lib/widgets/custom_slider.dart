import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/text_styles.dart';
import '../core/constants.dart';

class CustomSlider extends StatelessWidget {
  final String label;
  final double value;
  final String unit;
  final double min;
  final double max;
  final ValueChanged<double>? onChanged;
  final EdgeInsetsGeometry? padding;

  const CustomSlider({
    super.key,
    required this.label,
    required this.value,
    required this.unit,
    required this.min,
    required this.max,
    this.onChanged,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(AppConstants.paddingMedium),
      child: Container(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        ),
        child: Column(
          children: [
            Text(label, style: AppTextStyles.labelText),
            const SizedBox(height: AppConstants.paddingSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(value.toInt().toString(), style: AppTextStyles.largeValue),
                const SizedBox(width: 4),
                Text(unit, style: AppTextStyles.smallValue),
              ],
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: AppColors.sliderActive,
                inactiveTrackColor: AppColors.sliderInactive,
                thumbColor: AppColors.sliderActive,
                overlayColor: AppColors.sliderOverlay,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: AppConstants.sliderThumbRadius,
                ),
                overlayShape: const RoundSliderOverlayShape(
                  overlayRadius: AppConstants.sliderOverlayRadius,
                ),
              ),
              child: Slider(
                value: value,
                min: min,
                max: max,
                onChanged: onChanged ?? (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
