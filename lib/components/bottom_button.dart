import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPressed, required this.buttonTitle});

  final Function onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        color: kButtonSubmitColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
