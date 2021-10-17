// ignore: unused_import
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'bottom_button.dart';
import 'package:flutter/material.dart';
import 'calculater_brain.dart';

class ResultPage extends StatelessWidget {
  final String BMIResult;
  final String resultText;
  final String Interpretation;
  ResultPage(
      {@required this.BMIResult,
      @required this.resultText,
      @required this.Interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: kResultTextStyle),
                    Text(
                      BMIResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      Interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    BottomButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        buttonTitle: 'RE-CALCULATE'),
                  ],
                ),
                colour: kActiveCardColor,
              ),
            ),
          ],
        ));
  }
}
