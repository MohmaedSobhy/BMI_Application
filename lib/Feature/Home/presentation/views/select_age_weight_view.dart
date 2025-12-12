import 'package:bmi/Feature/Home/presentation/widgets/custome_card_widget.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class SelectAgeWeightView extends StatefulWidget {
  final ValueChanged<int> onAgeChange, onWeightChange;
  const SelectAgeWeightView({
    super.key,
    required this.onAgeChange,
    required this.onWeightChange,
  });

  @override
  State<SelectAgeWeightView> createState() => _SelectAgeWeightViewState();
}

class _SelectAgeWeightViewState extends State<SelectAgeWeightView> {
  int weight = 50;
  int age = 50;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        Expanded(
          child: CustomeCardWidget(
            title: AppString.weight,
            label: "$weight",
            onDecremant: () {
              if (weight - 1 > 0) {
                weight--;
                widget.onWeightChange(weight);
                setState(() {});
              }
            },
            onIncremant: () {
              if (weight + 1 <= 300) {
                weight++;
                widget.onWeightChange(weight);
                setState(() {});
              }
            },
          ),
        ),
        Expanded(
          child: CustomeCardWidget(
            title: AppString.age,
            label: "$age",
            onDecremant: () {
              if (age - 1 > 0) {
                age--;
                widget.onAgeChange(age);
                setState(() {});
              }
            },
            onIncremant: () {
              if (age + 1 <= 120) {
                age++;
                widget.onAgeChange(age);
                setState(() {});
              }
            },
          ),
        ),
      ],
    );
  }
}
