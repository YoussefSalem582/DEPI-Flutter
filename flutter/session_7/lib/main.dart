// 20-12-2025
//-------Session 7: flutter First App

import 'package:flutter/material.dart';
import 'package:session_7/first_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstApp());
  }
}
