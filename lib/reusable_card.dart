import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPressed});

  final Color colour;
  final Widget? cardChild;
  Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed!();
      },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
//const Color(0xFF1D1E33)
