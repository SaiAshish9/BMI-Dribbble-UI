import 'package:bmi/components/bottom_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Text('Your Result', style: kTitleTextStyle))),
              Expanded(
                  flex: 5,
                  child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(resultText.toUpperCase(),
                              style: kResultTextStyle),
                          Text(bmiResult, style: kBMITextStyle),
                          Text(
                            interpretation,
                            style: kBodyTextStyle,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))),
              BottomButton(
                  buttonTitle: 'RE-CALCULATE',
                  onTap: () {
                    Navigator.pop(context);
                  })
            ]));
  }
}
