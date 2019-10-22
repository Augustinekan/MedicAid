import 'package:flutter/material.dart';
import 'constantsfile.dart';
import 'myCards.dart';

class MyResult extends StatelessWidget {
MyResult({@required this.bmiResult,@required this.opinion,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String  opinion;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.pinkAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BMI CALCULATOR"),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                    alignment: Alignment.bottomLeft,
                    child: Text(
              "YOUR BMI IS",
              style: kTitleStyle,
            ))),
            Expanded(
              flex: 5,
              child: MyCont(
                mycolor: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIStyle,
                    ),
                    Text(
                        opinion,
                    style: kOpinionStyle,
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ),
            CalculateButton(buttonText: "RE-CALCULATE", onTap:(){
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
