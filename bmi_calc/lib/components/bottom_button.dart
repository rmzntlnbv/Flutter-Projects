import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.buttonText, 
    required this.onTapped,
  });

  final String buttonText;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: Center(child: Text(buttonText, style: kLargeTextStyle,)),
        height: kBottomConHeight,
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
      ),
    );
  }
}