import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconWidget extends StatelessWidget {
  IconWidget({required this.icon, required this.iconName});

  final IconData icon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconName,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
//FontAwesomeIcons.mars,
