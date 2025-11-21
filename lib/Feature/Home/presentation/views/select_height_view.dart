import 'package:bmi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SelectHeightView extends StatelessWidget {
  const SelectHeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.activeCardColour,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('HEIGHT', style: TextStyle(fontSize: 25, color: AppColors.grey)),
        ],
      ),
    );
  }
}
