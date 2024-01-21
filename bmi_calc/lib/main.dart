import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF04040c),
        appBarTheme: AppBarTheme(color: Color(0xFF04040c)),
      ),
      home: InputPage(),
    );
  }
}

