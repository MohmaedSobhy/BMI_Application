import 'package:bmi/Feature/Home/presentation/widgets/gender_card_widget.dart';
import 'package:bmi/core/theme/app_colors.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class SelectGenderView extends StatefulWidget {
  final ValueChanged<bool> onGenderChange;
  const SelectGenderView({super.key, required this.onGenderChange});

  @override
  State<SelectGenderView> createState() => _SelectGenderViewState();
}

class _SelectGenderViewState extends State<SelectGenderView> {
  bool isMaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        Expanded(
          child: GenderCardWidget(
            onTap: () {
              setState(() {
                isMaleSelected = true;
                widget.onGenderChange(isMaleSelected);
              });
            },
            label: AppString.male,
            icon: Icons.male,
            background:
                (isMaleSelected == true)
                    ? AppColors.primaryColor
                    : AppColors.activeCardColour,
          ),
        ),
        Expanded(
          child: GenderCardWidget(
            onTap: () {
              setState(() {
                isMaleSelected = false;
                widget.onGenderChange(isMaleSelected);
              });
            },
            label: AppString.female,
            icon: Icons.female,
            background:
                (isMaleSelected == false)
                    ? AppColors.primaryColor
                    : AppColors.activeCardColour,
          ),
        ),
      ],
    );
  }
}
