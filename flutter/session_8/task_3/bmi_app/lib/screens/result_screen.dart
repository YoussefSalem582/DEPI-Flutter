import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/text_styles.dart';
import '../core/constants.dart';
import '../widgets/result_card.dart';
import '../widgets/custom_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Back button and title
            Padding(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.textWhite,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: AppConstants.paddingLarge),
                  const Text(
                    'Your result',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textWhite,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppConstants.paddingMedium),

            // Result Card
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.paddingMedium,
                ),
                child: ResultCard(
                  status: 'NORMAL',
                  bmiValue: '18.5',
                  description:
                      'your body weight is absolutely normal,\nGood job! 💪',
                ),
              ),
            ),

            // Recalculate Button
            CustomButton(
              text: 'Recalculate',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
