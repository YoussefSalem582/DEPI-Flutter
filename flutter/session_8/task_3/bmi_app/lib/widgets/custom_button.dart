import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/text_styles.dart';
import '../core/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.height,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(AppConstants.paddingMedium),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height ?? AppConstants.buttonHeight,
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.primaryPink,
            borderRadius: BorderRadius.circular(
              borderRadius ?? AppConstants.smallBorderRadius,
            ),
          ),
          child: Center(
            child: Text(text, style: textStyle ?? AppTextStyles.buttonText),
          ),
        ),
      ),
    );
  }
}
