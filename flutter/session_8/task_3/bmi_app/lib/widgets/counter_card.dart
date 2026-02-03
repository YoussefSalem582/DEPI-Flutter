import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'custom_card.dart';
import 'label_value_text.dart';
import 'circle_button.dart';

class CounterCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const CounterCard({
    super.key,
    required this.label,
    required this.value,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LabelValueText(label: label, value: '$value'),
          const SizedBox(height: AppConstants.paddingMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(icon: Icons.remove),
              const SizedBox(width: AppConstants.paddingMedium),
              CircleButton(icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
