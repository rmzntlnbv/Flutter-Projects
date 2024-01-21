import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class GenderCard extends StatelessWidget {
  const GenderCard({
    required this.genderIcon, required this.genderText,
  });

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText, 
        style: kLabelTextStyle),
      ],
    );
  }
}