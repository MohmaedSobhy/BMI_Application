import 'package:bmi/core/theme/app_colors.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class SelectHeightView extends StatefulWidget {
  final ValueChanged<double> onChange;

  const SelectHeightView({super.key, required this.onChange});

  @override
  State<SelectHeightView> createState() => _SelectHeightViewState();
}

class _SelectHeightViewState extends State<SelectHeightView> {
  double selectedHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.activeCardColour,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            AppString.heigth,
            style: TextStyle(fontSize: 25, color: AppColors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            spacing: 5,
            children: [
              Text(
                "${selectedHeight.toInt()}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              const Text("Cm", style: TextStyle(color: AppColors.white)),
            ],
          ),
          Slider(
            value: selectedHeight,
            min: 80,
            max: 220,
            activeColor: AppColors.primaryColor,
            inactiveColor: AppColors.grey,
            onChanged: (value) {
              setState(() {
                selectedHeight = value;
                widget.onChange(selectedHeight);
              });
            },
          ),
        ],
      ),
    );
  }
}
