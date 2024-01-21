
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/Reusable_card.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'results_page.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_button.dart';
import 'calc_brain.dart';


enum Gender {
  male,
  female,
  noValue,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.noValue;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActiveCardColor: kInActiveCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                    ),
                ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? kActiveCardColor: kInActiveCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                    ),
                ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kLabelNumStyle,),
                      Text('cm', style: kLabelTextStyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(), 
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
              onPress: () {
                print('1');
              }, 
              colour: kActiveCardColor, 
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  onPress: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: kLabelTextStyle,),
                      Text(weight.toString(), style: kLabelNumStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            iconImg: FontAwesomeIcons.minus,
                            onPrassed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,), 
                          RoundIconButton(
                            iconImg: FontAwesomeIcons.plus,
                            onPrassed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                    ),
                  ),
                ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  onPress: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: kLabelTextStyle,),
                      Text(age.toString(), style: kLabelNumStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            iconImg: FontAwesomeIcons.minus,
                            onPrassed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,), 
                          RoundIconButton(
                            iconImg: FontAwesomeIcons.plus,
                            onPrassed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTapped: () {

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => Results(
                bmiResult: calc.calcBMI(),
                resultText: calc.getResult(),
                resultDesc: calc.getDescrip(),
              )));
            },
            buttonText: 'CALCULATE',
          )
        ],
      )
    );
  }
}


