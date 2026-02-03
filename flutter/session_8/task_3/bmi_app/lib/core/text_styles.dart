import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  // Logo Text
  static const TextStyle logoText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  // Label Text
  static TextStyle labelText = TextStyle(
    fontSize: 16,
    color: AppColors.textGrey,
  );

  static TextStyle genderLabel = TextStyle(
    fontSize: 18,
    color: AppColors.textGrey,
  );

  // Value Text
  static const TextStyle largeValue = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static TextStyle smallValue = TextStyle(
    fontSize: 18,
    color: AppColors.textGrey,
  );

  // Button Text
  static const TextStyle buttonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );
}
