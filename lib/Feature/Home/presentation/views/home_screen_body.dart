import 'package:bmi/Feature/Home/presentation/views/select_height_view.dart';
import 'package:bmi/core/theme/app_colors.dart';
import 'package:bmi/core/utils/app_string.dart';
import 'package:bmi/Feature/Home/presentation/widgets/custome_card_widget.dart';
import 'package:bmi/Feature/Home/presentation/widgets/gender_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool isMaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 10,
        children: [
          Expanded(
            child: Row(
              spacing: 30,
              children: [
                Expanded(
                  child: GenderCardWidget(
                    onTap: () {
                      setState(() {
                        isMaleSelected = true;
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
            ),
          ),
          Expanded(child: SelectHeightView()),
          Expanded(
            child: Row(
              spacing: 30,
              children: [
                Expanded(
                  child: CustomeCardWidget(
                    title: AppString.weight,
                    label: "50",
                    onDecremant: () {},
                    onIncremant: () {},
                  ),
                ),
                Expanded(
                  child: CustomeCardWidget(
                    title: AppString.age,
                    label: "50",
                    onDecremant: () {},
                    onIncremant: () {},
                  ),
                ),
              ],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            color: AppColors.primaryColor,
            minWidth: double.infinity,
            child: Text(
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
