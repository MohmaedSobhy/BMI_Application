import 'package:bmi/core/theme/app_colors.dart';
import 'package:bmi/Feature/Home/presentation/views/home_screen_body.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        backgroundColor: AppColors.backGround,
        centerTitle: true,
        title: Text(
          AppString.appTitle,
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: HomeScreenBody(),
    );
  }
}
