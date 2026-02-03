import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/text_styles.dart';

class AppLogo extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? iconColor;
  final double? iconSize;
  final TextStyle? textStyle;
  final double spacing;
  final EdgeInsetsGeometry? padding;

  const AppLogo({
    super.key,
    required this.icon,
    required this.text,
    this.iconColor,
    this.iconSize,
    this.textStyle,
    this.spacing = 8.0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor ?? AppColors.primaryPink,
            size: iconSize ?? 24,
          ),
          SizedBox(width: spacing),
          Text(text, style: textStyle ?? AppTextStyles.logoText),
        ],
      ),
    );
  }
}
