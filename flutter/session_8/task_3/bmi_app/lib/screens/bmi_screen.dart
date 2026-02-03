import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/constants.dart';
import '../widgets/app_logo.dart';
import '../widgets/gender_card.dart';
import '../widgets/custom_slider.dart';
import '../widgets/counter_card.dart';
import '../widgets/custom_button.dart';
import 'result_screen.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo
            AppLogo(
              icon: Icons.analytics_outlined,
              text: 'BmIndex',
              iconColor: AppColors.primaryPink,
              iconSize: AppConstants.logoIconSize,
              spacing: AppConstants.paddingSmall,
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
            ),

            // Gender Selection
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingMedium,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GenderCard(
                      icon: Icons.male,
                      label: 'male',
                      isSelected: false,
                    ),
                  ),
                  const SizedBox(width: AppConstants.paddingMedium),
                  Expanded(
                    child: GenderCard(
                      icon: Icons.female,
                      label: 'female',
                      isSelected: true,
                    ),
                  ),
                ],
              ),
            ),

            // Height Slider
            CustomSlider(
              label: 'Height',
              value: AppConstants.heightDefault,
              unit: 'cm',
              min: AppConstants.heightMin,
              max: AppConstants.heightMax,
              onChanged: (value) {},
            ),

            // Weight and Age
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.paddingMedium,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CounterCard(
                        label: 'weight',
                        value: AppConstants.weightDefault,
                      ),
                    ),
                    const SizedBox(width: AppConstants.paddingMedium),
                    Expanded(
                      child: CounterCard(
                        label: 'age',
                        value: AppConstants.ageDefault,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Calculate Button
            CustomButton(
              text: 'Calculate',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResultScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
