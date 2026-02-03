import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/constants.dart';

class ResultCard extends StatelessWidget {
  final String status;
  final String bmiValue;
  final String description;

  const ResultCard({
    super.key,
    required this.status,
    required this.bmiValue,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      padding: const EdgeInsets.all(AppConstants.paddingLarge * 2),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Status text
          Text(
            status,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF24D876),
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 60),

          // BMI Value
          Text(
            bmiValue,
            style: const TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),

          const SizedBox(height: 60),

          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.textGrey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
