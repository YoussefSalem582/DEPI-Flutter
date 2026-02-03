import 'package:flutter/material.dart';
import '../core/text_styles.dart';

class LabelValueText extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;
  final double spacing;
  final MainAxisAlignment alignment;

  const LabelValueText({
    super.key,
    required this.label,
    required this.value,
    this.labelStyle,
    this.valueStyle,
    this.spacing = 8.0,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: alignment,
      children: [
        Text(label, style: labelStyle ?? AppTextStyles.labelText),
        SizedBox(height: spacing),
        Text(value, style: valueStyle ?? AppTextStyles.largeValue),
      ],
    );
  }
}
