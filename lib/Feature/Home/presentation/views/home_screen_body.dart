import 'package:bmi/Feature/Home/presentation/views/select_age_weight_view.dart';
import 'package:bmi/Feature/Home/presentation/views/select_gender_view.dart';
import 'package:bmi/Feature/Home/presentation/views/select_height_view.dart';
import 'package:bmi/core/theme/app_colors.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({super.key});

  bool isMaleSelected = false;

  int weight = 50;

  int age = 50;

  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 10,
        children: [
          Expanded(
            child: SelectGenderView(
              onGenderChange: (value) {
                isMaleSelected = value;
              },
            ),
          ),
          Expanded(
            child: SelectHeightView(
              onChange: (value) {
                height = value;
              },
            ),
          ),
          Expanded(
            child: SelectAgeWeightView(
              onAgeChange: (value) => age = value,
              onWeightChange: (value) => weight = value,
            ),
          ),

          MaterialButton(
            onPressed: () {},
            color: AppColors.primaryColor,
            minWidth: double.infinity,
            child: const Text(
              AppString.calculate,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
