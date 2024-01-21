import 'package:bmi_calculator/components/Reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({
    required this.bmiResult,
    required this.resultDesc,
    required this.resultText
  });

  final String bmiResult;
  final String resultText;
  final String resultDesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor, 
              onPress: (){},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(resultDesc, style: kBodyTextStyle, textAlign: TextAlign.center,),
                ],
              ), 
              )
            ),
          BottomButton(buttonText: 'RE-CALCULATE', onTapped: () {Navigator.pop(context);})
        ],
      ),
    );
  }
}