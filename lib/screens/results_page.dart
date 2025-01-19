import 'package:bmi_cal/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_page.dart';
import 'package:bmi_cal/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.feedback,
  });

  final String bmiResult;
  final String resultText;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calulator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(19.0),
                child: Text(
                  'Your Results',
                  style: kReultsTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colorU: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultsTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      feedback,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE BMI',
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
            ),
          ],
        ));
  }
}
