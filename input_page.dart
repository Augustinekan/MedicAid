import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myCards.dart';
import 'constantsfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:color_gram/bmiResult.dart';
import 'Calculator.dart';
class MyBmi extends StatefulWidget {
  @override
  _MyBmiState createState() => _MyBmiState();
}

class _MyBmiState extends State<MyBmi> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: MyCont(
                  myFunction: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  mycolor: selectedGender == Gender.male
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: MyCont(
                  myFunction: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  mycolor: selectedGender == Gender.female
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: MyCont(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(), style: kNumberStyle),
                          Text(
                            "CM",
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 14),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 28)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: kBottomContainerColor,
                            inactiveColor: Colors.grey,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                  mycolor: kActiveColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCont(
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                pressAction: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                pressAction: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                      mycolor: kActiveColor),
                ),
                Expanded(
                  child: MyCont(
                    mycolor: kActiveColor,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              pressAction: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              pressAction: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            onTap:(){
              Calculator calc =Calculator(height:height,weight: weight);
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context){
                    return MyResult(
                      bmiResult:calc.calculateBMI() ,
                      resultText:calc.getResult(),
                      opinion:calc.getOpinion() ,

                    );
                  }
                  ,),
              );
            } ,
            buttonText: "CALCULATE",
          ),
        ],
      ),
    );
  }
}

