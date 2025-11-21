import 'package:bmi/core/utils/app_string.dart';
import 'package:bmi/Feature/Home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appTitle,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
