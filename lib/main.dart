import 'package:flutter/material.dart';
import 'imput_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: const Color(0xFF0A0E21),
            ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}