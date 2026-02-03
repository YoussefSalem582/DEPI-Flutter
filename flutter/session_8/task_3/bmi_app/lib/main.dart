import 'package:flutter/material.dart';
import 'core/colors.dart';
import 'screens/bmi_screen.dart';
import 'screens/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryPink,
          brightness: Brightness.dark,
        ),
      ),
      home: const BmiScreen(), // Main BMI input screen
      // home: const ResultScreen(), // Uncomment to see result screen
    );
  }
}
