import 'package:bmi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeCardWidget extends StatelessWidget {
  final VoidCallback onIncremant, onDecremant;
  final String label, title;
  const CustomeCardWidget({
    super.key,
    required this.title,
    required this.label,
    required this.onDecremant,
    required this.onIncremant,
  });

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
        spacing: 5,
        children: [
          Text(title, style: TextStyle(fontSize: 25, color: AppColors.grey)),
          Text(
            label,
            style: TextStyle(
              fontSize: 25,
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              InkWell(
                onTap: onIncremant,
                child: CircleAvatar(
                  backgroundColor: AppColors.grey,
                  child: Icon(Icons.add, color: AppColors.white),
                ),
              ),
              InkWell(
                onTap: onDecremant,
                child: CircleAvatar(
                  backgroundColor: AppColors.grey,
                  child: Icon(Icons.remove, color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
