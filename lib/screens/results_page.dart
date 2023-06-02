import 'package:flutter/material.dart';
import 'package:ibm_flutter_app/components/reusable_card.dart';
import 'package:ibm_flutter_app/components/bottom_button.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.resultText,
    required this.resultBMI,
    required this.resultInterpretation,
  });

  final String resultText;
  final String resultBMI;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              'Your results',
              style: kTitleTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: ReusableCard(
              padding: const EdgeInsets.all(1.0),
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultBMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
