import 'package:flutter/material.dart';
import 'package:ibm_flutter_app/reusable_card.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kButtonSubmitColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: const Text(
                'RE-CALCULATE',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
