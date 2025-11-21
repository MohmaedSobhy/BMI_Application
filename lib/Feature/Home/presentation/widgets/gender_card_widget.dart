import 'package:bmi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GenderCardWidget extends StatelessWidget {
  final String label;
  final Color background;
  final IconData icon;
  final VoidCallback onTap;
  const GenderCardWidget({
    super.key,
    required this.label,
    required this.background,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 100, color: AppColors.white),
            SizedBox(height: 15),
            Text(
              label,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
